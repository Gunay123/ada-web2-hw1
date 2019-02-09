package ada.gunay.abbasov;

public class LoginBean implements java.io.Serializable {
	   private String login = null;
	   private String ip = null;
	   private String time = null;

	   public LoginBean() {
	   }
	   public String getLogin(){
	      return login;
	   }
	   public String getIp(){
	      return ip;
	   }
	   public String getTime(){
	      return time;
	   }
	   public void setLogin(String login){
	      this.login = login;
	   }
	   public void setIp(String ip){
	      this.ip = ip;
	   }
	   public void setTime(String time){
	      this.time=time;
	   }
	}