node{
   stage('SCM Checkout'){
     git 'https://github.com/Saravana2431/phpsamplepage.git'
   }
  //cmt 
   stage('Remove Previous Container'){
	try{
	    
		sh 'docker rm -f newcont'
	}catch(error){
		//  do nothing if there is an except
	}
}
	//remove container
	stage('Remove Previous Container'){
	try{
		sh 'docker rmi -f newimg'
	}catch(error){
		//  do nothing if there is an exception
	}
	
}

   stage('Build Docker Imager'){
   sh 'docker build -t newimg /phpsamplepage/'
   }

    stage('Docker deployment'){
   sh 'docker run -itd --name newcont -p "8098:80" newimg' 
   }
 
}
