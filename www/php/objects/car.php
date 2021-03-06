<?php
class Car{
    private $conn;
    private $table_name = "cars";
    public $idCars;
    public $description;
    public $mark_id;
    public $model_id;
    public $cost;
    public $year;
    public $fuel_id;
    public $transmission;
    public $body_id;
    public $user_id;
    public $city_id;
    public $region_id;
    public $country_id;
    public $audio_id;
    public $security_id;
    public $equipment_id;
    public $electric_id;
    public $antitheft_id;
    public $interior_id;
    public $creation_time;

    public function __construct($db){
        $this->conn = $db;
    }

    function readAll(){
        $query = "SELECT * FROM " . $this->table_name . ";";
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
        return $stmt;
    }

    function readOne(){
        $query = "SELECT * FROM " . $this->table_name . " WHERE idCars = ?;";
        $stmt = $this->conn->prepare( $query );
        $stmt->bindParam(1, $this->idCars);
        $stmt->execute();
        return $stmt;
    }

    function readWithFilter ($max_price,$min_price,$year_begin,$year_end)
    {
        $helper;
        if(empty($this->mark_id) and empty($this->model_id) and empty($this->fuel_id)
            and empty($this->transmission) and empty($this->body_id) and empty($max_price)
             and empty($min_price) and empty($year_begin) and empty($year_end) and empty($this->country_id)
              and empty($this->region_id) and empty($this->city_id)){
                return $this->readAll();
            }
        $helper = $helper.' WHERE cars.city_id = cities.id and cities.region_id = regions.id and countries.id = regions.country_id';
        if(!empty($this->mark_id))
        {
            $helper = $helper.' and ';
            $helper = $helper . " mark_id = " . $this->mark_id ;
        }
        if(!empty($this->model_id))
        {
            $helper = $helper.' and ';
            $helper = $helper . " model_id = " . $this->model_id ;
        }
        if(!empty($this->fuel_id))
        {
            $helper = $helper.' and ';
            $helper = $helper . " fuel_id = " . $this->fuel_id ;
        }
        if(!empty($this->body_id))
        {
            $helper = $helper.' and ';
            $helper = $helper . " body_id = " . $this->body_id ;
        }
        if(!empty($this->transmission))
        {
            $helper = $helper.' and ';
            $helper = $helper . " transmission = " . $this->transmission ;
        }
        if(!empty($max_price) and !empty($min_price))
        {
            $helper = $helper.' and ';
            $helper = $helper . " cost between " . $max_price . " and ". $min_price ;
        }
        else if(!empty($max_price)){
            $helper = $helper.' and ';
            $helper = $helper . " cost < " . $max_price;
        }
        else if(!empty($min_price)){
            $helper = $helper.' and ';
            $helper = $helper . " cost > " . $min_price;
        }
        if(!empty($year_begin) and !empty($year_end))
        {
            $helper = $helper.' and ';
            $helper = $helper . " year between " . $year_begin . " and ". $year_end ;
        }
        else if(!empty($year_begin)){
            $helper = $helper.' and ';
            $helper = $helper . " year > " . $year_begin;
        }
        else if(!empty($year_end)){
            $helper = $helper.' and ';
            $helper = $helper . " year < " . $year_end;
        }
        /*TRAnsmission
         */
        if(!empty($this->country_id)){
            $helper = $helper.' having country_id = '.$this->country_id;
            if(!empty($this->region_id)){
                $helper = $helper.' and region_id = '.$this->region_id;
                if(!empty($this->city_id)){
                    $helper = $helper.' and cities.id = '.$this->city_id;
                }
            }
        }
        
        $sql = " SELECT cars.*, cities.id as 'city_id', regions.id as 'region_id', countries.id as 'country_id'".
            "FROM " . $this->table_name .", cities, regions, countries ". $helper . " ;" ;
        /*region + countries*/
        $query = $sql;
        $stmt = $this->conn->prepare( $query );
        $stmt->execute();
        return $stmt;
    }
}
?>