import React from "react";
import styles from "./style.module.css";

const LoginForm = () => {
  return (
    <div className={styles.container}>
      <h1>Login</h1>
      <form className={styles.form}>
        <input type="text" name="username" placeholder="username" />
        <input type="password" name="password" placeholder="password" />
        <button type="button">Submit</button>
      </form>
    </div>
  );
};

export default LoginForm;
