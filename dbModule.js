import dotenv from 'dotenv';
import mysql from 'mysql2/promise';

dotenv.config();

const connectToDb = async () => {
    try {
        const connection = await mysql.createConnection({
            host: process.env.db_host,
            user: process.env.db_user,
            password: process.env.db_password,
            database: "ktg"
        })

        return connection;
    } catch (err) {
        console.log(err);
    }    
}


export const getFlags = async () => {
    
    const connection = await connectToDb();
    const queryStr = "SELECT * FROM flag";
    try {
        const [results, fields] = await connection.query(queryStr)
        console.log(results);
        console.log(fields);
        return results;

    } catch (err) {
        console.log(err);
    }


};