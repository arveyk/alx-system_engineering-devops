What happens when You type google.com in you browser and press Enter?
This is the question we are going to look at in this post

Let's begin

DNS request
For computer in the internet to communicate with eachother, there must be a way to uniquely identify each individual device.
Identification is done by assignement of IP (internet protocal) address. Each
device or internet user has one and it acts similar to how home addresses work, in enabling locating a device in the internet. However IP addresses are difficult to remember. IPv4(IP version 4) looks something like this 34.192.156.192.

Thats where DNS comes in. The Domain Name System(DNS) maps the domain names (like facebook.com) which  are easier to remember, to IP addresses which are what computers use. When a DNS request is made, it is a request for  the IP address corresponding the that domain name. Think of it as a phonebook linking you to a specific number of a persons name you remember.

When you type a URL(uniform resource locator) on the browser and press enter, it is sent as a request for a specific resource from a server through a communication channel/protocol using an IP address of the server. The browser first checks if the operating system cached (pronounced as Kashed) the IP before requesting it from DNS. 
The IP address that DNS gives you is what you computer will use to communicate with the server it needs the web content from. You may type the IP address instead of the domain name which would be a direct route to that server.
You may wonder what "language" or set of rules (protocol) do devices on the internet use to ensure consistency when communicating with each-other?
HTTP is the protocol web browsers use to communicate to 
web server in the internet protocol suit HTTP is in the application layer. It 
governs how web content should be structured and read by any browser.

    TCP/IP
TCP/IP is a 4 layer set of protocols that governs how communication is done between users in the internet. The TCP deals with how data is transmitted, while IP deal with how devices communicate
    Firewall
Firewall are security devices used in a network to filter what comes out or 
goes into a particular network. It secures the devices in that network by ensuring attackers or unauthorized users are not allowed to access it
 
   HTTPS/SSL
These are secure methods of data transmission established to encrypt data from 
source to destination. HTTPS id the secure version of HTTP
Secure Socket Layer
    Load-balancer
A load balancer is a software or hardware that distributes requests from clients
to servers so when millions of similar requests are made to one domain, a load balancer distributes these requests and sends back responses accordingly.

This help in an individual server not beig overwhekmed by spike in traffic and enables faster response to requests.
When you request resources (simply by searching for it in the internet) from a 
well-known and frequently use website, it with millions of others have to go 
through load balancers.
    Web server
A web server is a server that receives HTTP requests and responds with HTTP content. It is what send's back a HTML or any other relevant resource when you 
search for it in a browser.
    Application server
An application server offer a business application functionality. It hosts applications for example an Engineering or Architectural drafting software (AutoCAD, ArchiCAD...etc).
    Database
Database is a collection of data in an organised way that enables retrieval, editing. 
Request sent to servers causes the webservers to retrieve resources from their 
databases and sents to the client or carries out an operation depending on the 
request made and the priveleges the client has on the server database.

What if the IP address in not available in the OS?
If an IP address is not available in the Operating System (O.S.) a resolver (usually I.S.P., Internet Service Provider provides it or searches for it if the ISP doesn't have it. The search goes to the root domain and the Top Level Domain (TLD), and finally Authoritative Name server. When finally the IP address is found
it sent to the client browser throught the routes the ISP went searching and the IP address is also saved in the TLD, root and client OS cache memory for future searches.

Finally, on the client device, upon receiving the needed IP address uses it to 
visit the server and recieve resources from it.


That's it!

Resources:
#<a href="https://howdns.works/ep3/" >

types of TLD
general
country code letter ISO code e.g .JP .KE
internationalized country code .ykp
Generic TLD NET .ORG .EDU
Infrastructure TLD
 For reverse DNS lookup
