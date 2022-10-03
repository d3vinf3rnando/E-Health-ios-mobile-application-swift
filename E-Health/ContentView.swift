//
//  ContentView.swift
//  E-Health
//
//  Created by Devin Fernando on 2022-09-27.
//push check

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //starting point of the first screen
        NavigationView{
            ZStack {
                //screen background
                LinearGradient(gradient: Gradient(colors: [Color.blue , Color.white]), startPoint: .zero, endPoint:.bottomTrailing)
                           .edgesIgnoringSafeArea(.all)
                
                Image("pose")
                    .position(x:205,y:320)
                
                ZStack{
                    //white card and text
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                                   .fill(.white)
                                   .frame(width: 430, height: 420)
                                   .position(x:215,y:690)
                    
                    HStack{
                        Text("Book an appoinment")
                            .position(x:215, y:530).fontWeight(SwiftUI.Font.Weight.semibold)
                            .foregroundColor(SwiftUI.Color.blue)
                            .font(.system(size: 22))
          

                    }
                    Text("Easy, Quick and safest way to book your appointments. Find your specialist doctor today.")
                        .font(.system(size: 18))
                        .foregroundColor(SwiftUI.Color.gray)
                        .fontWeight(SwiftUI.Font.Weight.regular)
                        .multilineTextAlignment(.center)
                        .position(x:180, y:610)
                        .padding(30)
                               
            
                    //navigation button
                    NavigationLink(destination: NewPage()) {
                        Text("Next")
                        
                            .padding()
                            .frame(width:348, height:60)
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(10)
                            .position(x:215,y:800)
                            .cornerRadius(20)
                            .fontWeight(SwiftUI.Font.Weight.semibold)
                        
                               

                    }
                }
                
            }
        }
 
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//home page view
struct NewPage:View{
    @State var searchText=""
    let icons=[
        "house.fill",
        "pills.fill",
        "book.closed.fill",
        "gearshape.fill"
    ]
    var body:some View{
        
        ZStack{
        
            Image("blur3") //bacground image
               
                .position(x:215, y:375)
               

            
            HStack{ //top horizontal bar
                Image("Profile")
                    .resizable()
                    .frame(width:50, height:50)
                    .position(x:50, y:30)
                
                Image("menu")
                    .resizable()
                    .frame(width:38, height:38)
                    .position(x:360, y:30)
                
                HStack{
                    TextField("Search", text: $searchText)
                        .foregroundColor(SwiftUI.Color.black)
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                }
                .font(.headline)
                .padding()
                .background(Color.white, in: RoundedRectangle(cornerRadius:20) )
                .shadow(
                    color: Color.gray.opacity(0.2),
                    radius: 4,
                    x: 0,
                    y: 0)
                
                .position(x:165, y:120)
                
                .frame(width: 380)
                
                
            }
            VStack{
                //yellow card text details iwth images
                //top rated doctors
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color.yellow)
                               .frame(width: 250, height: 321)
                               .position(x:150,y:370)
                               .shadow(
                                   color: Color.yellow.opacity(0.4),
                                   radius: 10,
                                   x: 0,
                                   y: 10)
                HStack{
                    Text("Channel Eric")
                        .foregroundColor(SwiftUI.Color.white)
                        .font(.system(size: 18))
                        .fontWeight(SwiftUI.Font.Weight.bold)
                        .position(x:105, y:-15)
                    
                    Text("""
                        Specialist on
                        Allergists
                        """)
                        .foregroundColor(SwiftUI.Color.white)
                        .font(.system(size: 16))
                        .fontWeight(SwiftUI.Font.Weight.regular)
                        .position(x: -120, y:25)
                        
                    
                    
                }
                
                
                HStack{
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.purple)
                                   .frame(width: 150, height: 246)
                                   .position(x:380,y:-160)
                                   .shadow(
                                       color: Color.purple.opacity(0.4),
                                       radius: 10,
                                       x: 0,
                                       y: 10)
                    
                    //for the purple card details with text and images
                    Text("Channel Maria")
                        .foregroundColor(SwiftUI.Color.white)
                        .fontWeight(SwiftUI.Font.Weight.semibold)
                        .font(.system(size:20))
                        .position(x:245,y:-240)
                    
                
                    Text("Specialist on Cardiologists")
                        .foregroundColor(SwiftUI.Color.white)
                        .fontWeight(SwiftUI.Font.Weight.regular)
                        .font(.system(size:14))
                        .position(x:80,y:-200)
                    
                   

                }
            }
            
            //images of 2 doctors
            NavigationLink(destination:DoctorDetails()){
                Image("doctor1")
                    .resizable()
                    .frame(width:250, height:250)
                    .position(x:180, y:400)
            }
            
            Image("doctor2")
                .resizable()
                .frame(width:80, height:140)
                .position(x:390, y:460)
            
            
                //begining of the most popular cards
            VStack{
                Text("Most popular")
                    .foregroundColor(SwiftUI.Color.black)
                    .font(.system(size: 22))
                    .fontWeight(SwiftUI.Font.Weight.semibold)
                    .position(x:100, y:590)
                
                //3 cards
                
                ZStack{
                    HStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color.mint)
                                           .frame(width: 127, height: 130)
                                           .position(x:100,y:280)
                            VStack{
                                Image("Image1")
                                    .resizable()
                                    .frame(width:60, height:60)
                                    .position(x:105, y:260)
                                
                                
                                Text("Pediatrics")
                                    .foregroundColor(SwiftUI.Color.white)
                                    .position(x:100,y:110)
                                    .font(.system(size:14))
                                    .fontWeight(SwiftUI.Font.Weight.bold)
                            }
                        }
                    
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color.pink)
                                           .frame(width: 127, height: 130)
                                           .position(x:100,y:280)
                            VStack{
                                Image("Image2")
                                    .resizable()
                                    .frame(width:45, height:45)
                                    .position(x:100, y:260)
                                
                                
                                Text("Cardiology")
                                    .foregroundColor(SwiftUI.Color.white)
                                    .position(x:100,y:110)
                                    .font(.system(size:14))
                                    .fontWeight(SwiftUI.Font.Weight.bold)
                            }
                        }
                        
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color.orange)
                                           .frame(width: 127, height: 130)
                                           .position(x:100,y:280)
                            
                            VStack{
                                Image("Image3")
                                    .resizable()
                                    .frame(width:45, height:45)
                                    .position(x:100, y:260)
                                
                                
                                Text("Dentistry")
                                    .foregroundColor(SwiftUI.Color.white)
                                    .position(x:100,y:110)
                                    .font(.system(size:14))
                                    .fontWeight(SwiftUI.Font.Weight.bold)
                            }
                            
                        }
                    }
                }
                
            }
            HStack{
                
                //implementation of bottom navigation bar
                HStack{
                    ForEach(0..<4, id:\.self){
                        number in
                        Spacer()
                        Button(action:{
                            
                        }, label:{
                            Image(systemName: icons[number])
                                .font(.system(size:22)) //import icons from SF Symbols
                                

                        })
                    }
                }
                
               
                
            }
            .position(x:180,y:830)
                        
         
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
}


//third screen (doctor's details)
struct DoctorDetails:View{
    @State private var alignment = TextAlignment.leading
    var body:some View{
        ZStack{
            Image("blur3")
               
                .position(x:215, y:375)
//            HStack{
//                Image(systemName: "arrowshape.turn.up.backward.fill")
//                Spacer() //less space  values
//                Image(systemName:"paperplane.fill")
//            }
//            .foregroundColor(SwiftUI.Color.blue)
//            .position(x:210,y:50)
//
            
            HStack{
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .fill(Color.mint)
                               .frame(width: 127, height: 190)
                               .position(x:100,y:140)
                
                Image("doctor3")
                    .resizable()
                    .frame(width:180,height:180)
                    .position(x:-115, y:105)
                
                
                
            }
            
        }
        
        //main head (doctor details)
        VStack{
            Text("Dr. Eric San")
                .position(x:270, y:-210)
                .font(.system(size:22))
                .fontWeight(SwiftUI.Font.Weight.semibold)
        }
        
        ZStack{
            VStack{
                ZStack{
                    Text("Specialist on Allergists")
                        .font(.system(size:16))
                        .fontWeight(SwiftUI.Font.Weight.regular)
                        .foregroundColor(SwiftUI.Color.gray)
                        .position(x:295, y:-450)
                }
            }
            ZStack{
                Image("cash")
                    .resizable()
                    .frame(width:30, height:30)
                    .position(x:230,y:-387)
            }
            
            ZStack{
                Text("COST")
                    .foregroundColor(SwiftUI.Color.gray)
                    .position(x:280,y:-400)
                    .font(.system(size:14))
            }
            
            ZStack{
               Text("$ 0.80/min")
                    .position(x:297,y:-375)
                    .font(.system(size:14))
            }
            
            ZStack{
                Image("smile")
                    .resizable()
                    .frame(width:30, height:30)
                    .position(x:230,y:-330)
            }
            
            ZStack{
                Text("HAPPY")
                    .foregroundColor(SwiftUI.Color.gray)
                    .position(x:285,y:-340)
                    .font(.system(size:14))
            }
            
            ZStack{
               Text("500+ ratings")
                    .position(x:302,y:-315)
                    .font(.system(size:14))
            }
            
            //BIO SECTION
            ZStack{
                Text("Bio")
                    .font(.system(size:22))
                    .fontWeight(SwiftUI.Font.Weight.semibold)
                    .position(x:50,y:-240)
            }
            
            ZStack{
                Text("MBBS (UK), MRCP(UK), Board Certified in Int. Medicine (U.S.A). The founder of Healthy Life Allergists Clinic.")
                    .foregroundColor(SwiftUI.Color.gray)
                    .padding(10)
                    .offset(x: 0, y: -305)
                    
            }
            
            ZStack{
                Text("Services")
                    .font(.system(size:22))
                    .fontWeight(SwiftUI.Font.Weight.semibold)
                    .position(x:80,y:-90)
                Spacer()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.white)
                                   .frame(width: 127, height: 130)
                                   .position(x:100,y:15)
                                   .shadow(color:.gray.opacity(0.2) ,radius: 20)
                    
                    Text("878+ \nPatients")
                        .foregroundColor(SwiftUI.Color.blue)
                        .font(.system(size:16))
                        .fontWeight(SwiftUI.Font.Weight.semibold)
                        .position(x:105,y:15)
                        
                        
                }
                
                Spacer()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.white)
                                   .frame(width: 127, height: 130)
                                   .position(x:250,y:15)
                                   .shadow(color:.gray.opacity(0.2) ,radius: 20)
                    
                    Text("1k+ \nAppointm...")
                        .foregroundColor(SwiftUI.Color.blue)
                        .font(.system(size:16))
                        .fontWeight(SwiftUI.Font.Weight.semibold)
                        .position(x:250,y:15)
                }
                
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.white)
                                   .frame(width: 127, height: 130)
                                   .position(x:400,y:15)
                                   .shadow(color:.gray.opacity(0.2) ,radius: 20)
                    
                    Text("5+ \nYears of")
                        .foregroundColor(SwiftUI.Color.blue)
                        .font(.system(size:16))
                        .fontWeight(SwiftUI.Font.Weight.semibold)
                        .position(x:395,y:15)
                }
                
                Spacer()
                
                Text("History")
                    .font(.system(size:22))
                    .fontWeight(SwiftUI.Font.Weight.semibold)
                    .position(x:80,y:140)
                
                //histoty of the doctor need to be added
                
                
                
                //book an appointment button implementation
                Button(action: {
                           
                       }) {
                           Text("Book an appointment")
                               
                               .padding()
                               .font(.system(size:22))
                               .fontWeight(SwiftUI.Font.Weight.semibold)
                               .foregroundColor(SwiftUI.Color.white)
                               .frame(width:348, height:60)
                               .background(SwiftUI.Color.blue)
                               .cornerRadius(10)
                               .position(x:220,y:220)
                               
                              
                       }
                       
                
            }
            
           
            
            
            
        }
        
        
        
        
        
        
    }
    
}




struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorDetails()
    }
}

//end
