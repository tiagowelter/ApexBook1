/*
Exemplo de execução do código no Execute Anonymous:
        Car car1 = new Car('Toyota', 'Corolla', 2020, 35000);
        Car car2 = new Car('Honda', 'Civic', 2019, 40000);

        // Acessando atributos
        System.debug(car1.getBrand()); // Toyota
        System.debug(car2.getModel()); // Civic

        // Acessando métodos
        car1.startEngine(); // Engine started
        car2.accelerate(); // Accelerating
*/
public class Car {
    private String brand;
    private String model;
    private Integer year;
    private double price;

    public Car(String brand, String model, Integer year, double price) {
        this.brand = brand;
        this.model = model;
        this.year = year;
        this.price = price;
    }

    public void startEngine() {
        System.debug('Engine started');
    }

    public void stopEngine() {
        System.debug('Engine stopped');
    }

    public void accelerate() {
        System.debug('Accelerating');
    }

    public void brake() {
        System.debug('Braking');
    }

    public String getBrand() {
        return brand;
    }

    public String getModel() {
        return model;
    }

    public Integer getYear() {
        return year;
    }

    public double getPrice() {
        return price;
    }
}