public class Main {

    public static void main(String[] args){

        Database database = new Database();
        database.connect();


        //criando objetos para serem inseridos no banco
        //User user1 = new User("Paulo Otavio","123.456.987-09");
        //User user2 = new User("Joao Henrique","456.908.654-22");
        //User user3 = new User("Paulo Henrique","145.235.789-33");

        //Inserindo usuários no banco
        //database.insertUser(user1);
        //database.insertUser(user2);
        //database.insertUser(user3);



        //mostrando todos os usuário
        //System.out.println("-----Atualizando o nome-----");
        //database.updateUser(2,"Joao");

        //database.researchUser();

        System.out.println("-----Excluido usuário-----");
        database.deleteUser(3);
        database.researchUser();

    }
}
