function formValidation(){
	if(fname_validation())
       {
       if(lname_validation())
        {
            if(emailid_validation())
               {
               if(gen_validation())
                {
                       if(pass_validation())
                        {
                          if(pass1_validation())
                             {
                                return true;
                             }
                        }
                       
                }
               }
        }
       }
	
    
            return false;
        
}

function fname_validation()
{
	var fname=document.register.fn;
var letter=/^[A-Za-z]+$/;
if(fname.value.match(letter))
	{
	return true;
	}
else
	{
	alert("First Name must be alphabetic");
	fname.focus();
	return false;
	}
}
function lname_validation()
{var lname=document.register.ln;
var letter=/^[A-Za-z]+$/;
if(lname.value.match(letter))
	{
	return true;
	}
else
	{
	alert("Last Name must be alphabetic");
	lname.focus();
	return false;
	}
}
function emailid_validation()
{var emailid=document.register.email;
var letter=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/
if(emailid.value.match(letter))
	{
	return true;
	}
else
	{
alert("Please enter valid emailid");
emailid.focus();
return false;
}
}

function gen_validation()
{
    var gen=document.register.gen;
if(gen.value=="default")
	{
	alert("please enter gender from list");	
	gen.focus();
	return false;
	}
else
	{
	return true;
	}
}

function pass_validation()
{
	var pass=document.register.pass;
    var pass_len = pass.value.length;
    my=7;mx=12;
	if(pass_len >= my && pass_len<=mx)
		{
		return true;
		}
	else
		{
		alert("password length must be "+my+" to " +mx);
		pass.focus();
		return false;
		}

}
function pass1_validation()
{
    var pass1=document.register.pass1;
    var pass=document.register.pass;
    var pass_len=pass1.value.length;
    my=7;mx=12;
if(pass!=pass1)
	{
        alert("Password does not match");
        pass1.focus();
        return false;
	}
else
	{
	return true;
	}

}