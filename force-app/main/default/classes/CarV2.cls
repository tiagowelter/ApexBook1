/*
Exemplo de execução do código no Execute Anonymous:
        // Instanciando o objeto car1
        CarV2 car1 = new CarV2 (50.0, 120);

        // Instanciando o objeto car2
        CarV2 car2 = new CarV2 (40.0, 90);

        // Usando os métodos da classe Car
        car1.refuel(20.0);
        System.debug(car1.getFuel()); // 70.0

        car2.setSpeed(100);
        System.debug(car2.getSpeed()); // 100

        car1.drive(); // Driving at speed: 120
        car2.drive(); // Driving at speed: 100
*/
public class CarV2 {
    private double fuel;
    private Integer maxSpeed;

    public CarV2(double fuel, Integer maxSpeed) {
        this.fuel = fuel;
        this.maxSpeed = maxSpeed;
    }

    public void refuel(double fuelAmount) {
        fuel += fuelAmount;
    }

    public double getFuel() {
        return fuel;
    }

    public void setSpeed(Integer speed) {
        maxSpeed = speed;
    }

    public Integer getSpeed() {
        return maxSpeed;
    }

    public void drive() {
        System.debug('Driving at speed: ' + maxSpeed);
    }
}