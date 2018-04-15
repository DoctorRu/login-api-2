# Rails Login API JWT based

Original post by Vinoth

Article

https://www.sitepoint.com/authenticate-your-rails-api-with-jwt-from-scratch/

Github

https://github.com/avinoth/auth-scratch-demo

**Testing API**
Users

User POSTMAN to send a POST request to localhost:3000/users<br>
select Body, raw, JSON (application/json) and use the content below:


    {
        "user" : {
            "email" :"email@email.com",
            "password" :"password",
            "password_conirmation" :"password"
        }
    }

You should receive the User created successfully message as the response.



# Links

Bcrypt / SecurePassword

http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html#method-i-has_secure_password


https://github.com/codahale/bcrypt-ruby