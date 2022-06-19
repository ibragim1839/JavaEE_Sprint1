package ibragim.bitlab.sprint1.managing;

import ibragim.bitlab.sprint1.models.Item;

import java.sql.*;
import java.util.ArrayList;

public class ItemsManager{
    private static Connection connection;

    static{
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/bitlab_store","postgres", "postgres");
        } catch (Exception e) {
            e.getCause();
        }

    }

    public static ArrayList<Item> getAllItems(){
        ArrayList<Item> allItems = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM items_table");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()){
                Item anItem = new Item();
                anItem.setId(resultSet.getLong("id"));
                anItem.setName(resultSet.getString("name"));
                anItem.setDescription(resultSet.getString("description"));
                anItem.setPrice(resultSet.getInt("price"));

                allItems.add(anItem);
            }
            statement.close();


        }catch (Exception e){
            e.printStackTrace();
        }

        return allItems;
    }

    public static boolean checkUsers(String login1, String password1){

        boolean isInTheList = false;

        try{
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users_table WHERE login=? AND password=?");


            statement.setString(1, login1);
            statement.setString(2, password1);

            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
                isInTheList = true;
            }

        }catch (Exception e){
            e.printStackTrace();
        }

        return isInTheList;
    }
}
