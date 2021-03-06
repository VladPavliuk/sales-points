<?php

class UserController extends Controller
{
    /**
     * Render user account page.
     *
     */
    public function showUserAccountPageAction()
    {
        if (isset($_SESSION["user_token"])) {
            $this->smarty->display('user/userAccountPage.tpl');
        } elseif (isset($_SESSION["admin_token"])) {
            Router::redirectTo("admin");
        } else {
            Router::redirectTo("user/sign-in");
        }
    }

    /**
     * Render Sign In page.
     *
     */
    public function showSignInPageAction()
    {
        $this->smarty->display('user/userSignInPage.tpl');
    }

    /**
     * Authorization.
     * Get login and password from user.
     * Check if user exists in data base table.
     *
     */
    public function signInAction()
    {
        $login = isset($_REQUEST["user_nickname"]) ? $_REQUEST["user_nickname"] : 'null';
        $login = trim($login);

        $password = isset($_REQUEST["user_password"]) ? $_REQUEST["user_password"] : 'null';
        $password = trim($password);

        $authorizationType = $this->userModel->signIn($login, $password);

        switch ($authorizationType) {
            case "admin":
                Router::redirectTo("admin");
                break;

            case "user":
                Router::redirectTo("user/account");
                break;

            default:
                echo 'no admin and user defined. meeee';
        }

    }

    /**
     * Log out from user and admin account
     *
     */
    public function logoutAction()
    {
        $this->userModel->logout();

        Router::redirectTo(" ");
    }

    public function showSignUpPageAction()
    {

    }

}