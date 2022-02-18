document.addEventListener("DOMContentLoaded", function(){
    var filepickerjs = new filepickerJS(document);
});

class filepickerJS{
    constructor(document){

        console.log("CARGADO");

        this.uploadeddata = new Array();
        //INSTANCIANDO ELEMENTOS DE HTML
        this.subir = document.getElementById("uploadfile");
        this.subir.addEventListener("click",this.filepicker.bind(this),false);

        this.uploaded = document.getElementById("listloadedfiles");

        fetch('http://localhost:3900/getfilesdata')
            .then(response => response.json())
            .then(data => this.setData(data));


    }

    openurl(url){
        let meanejadorEvento = function() {
            console.log(url);
            window.open(url, '_blank');
        } 
        return meanejadorEvento;
    }

    setData(data){
        let htmlcontructor = '';
        for(let i=0; i<data.length; i++){
            let item = data[i];
            console.log(item);
            htmlcontructor += '<li id="'+item.url+'">';
            if(item.filetype == "pdf"){
                htmlcontructor += '<img src="/img/pdf.png">';
            }else if(item.filetype == "png" || item.filetype == "jpg"){
                htmlcontructor += '<img src="/img/img.jpg">';
            }else if(item.filetype == "plain"){
                htmlcontructor += '<img src="/img/text.png">';
            }else if(item.filetype.includes("vnd.openxmlformats-officedocument.spreadsheetml") || item.filetype=="xslx" || item.filetype.includes("excel")){
                htmlcontructor += '<img src="/img/excel.png">';
            }else if(item.filetype.includes("vnd.openxmlformats-officedocument.wordprocessingml") || item.filetype=="docx" || item.filetype.includes("word")){
                htmlcontructor += '<img src="/img/word.png">';
            }else if(item.filetype.includes("vnd.openxmlformats-officedocument.presentationml") || item.filetype=="pptx" || item.filetype.includes("powerpoint")){
                htmlcontructor += '<img src="/img/powerpoint.png">';
            }else{
                htmlcontructor += '<img src="/img/others.png">';
            }
            
            htmlcontructor += '<h5>'+item.filename+'</h5>';
            htmlcontructor += '</li>';
        }
        this.previusuploaded = document.getElementById("listpreviusuploads");
        this.previusuploaded.innerHTML = htmlcontructor;

        for(let i=0; i<data.length;i++){
            let item = data[i];
            this.peviusuploaditem = document.getElementById(item.url);
            this.peviusuploaditem.addEventListener("click",this.openurl(item.url),false);
        }
    }

    showuploadeddata(){
        let htmlcontructor = '';
        for(let i=0; i<this.uploadeddata.length; i++){
            let item = this.uploadeddata[i];
            console.log(item);
            console.log(item);
            htmlcontructor += '<li id="'+item.url+'">';
            if(item.type[1] == "pdf"){
                htmlcontructor += '<img src="/img/pdf.png">';
            }else if(item.type[1] == "png" || item.filetype == "jpg"){
                htmlcontructor += '<img src="/img/img.jpg">';
            }else if(item.type[1] == "plain"){
                htmlcontructor += '<img src="/img/text.png">';
            }else if(item.type[1].includes("vnd.openxmlformats-officedocument.spreadsheetml") || item.type[1]=="xslx" || item.type[1].includes("excel")){
                htmlcontructor += '<img src="/img/excel.png">';
            }else if(item.type[1].includes("vnd.openxmlformats-officedocument.wordprocessingml") || item.type[1]=="docx" || item.type[1].includes("word")){
                htmlcontructor += '<img src="/img/word.png">';
            }else if(item.type[1].includes("vnd.openxmlformats-officedocument.presentationml") || item.type[1]=="pptx" || item.type[1].includes("vnd.ms-powerpoint")){
                htmlcontructor += '<img src="/img/powerpoint.png">';
            }else{
                htmlcontructor += '<img src="/img/others.png">';
            }
            
            htmlcontructor += '<h5>'+item.filename+'</h5>';
            htmlcontructor += '</li>';
        }
        this.uploaded.innerHTML = htmlcontructor;

        for(let i=0; i<this.uploadeddata.length;i++){
            let item = this.uploadeddata[i];
            this.uploadeditem = document.getElementById(item.url);
            this.uploadeditem.addEventListener("click",this.openurl(item.url),false);
        }
        if(this.uploadeddata.length === 5){
            this.subir.style.backgroundColor='gray';
        }
        
    }

    filepicker(){
        this.client = filestack.init("AcSheIiJKSj2hx0xlN5Wlz");
        const options = {
            onUploadDone: file => {
                console.log(file);
                var currentfile = file.filesUploaded[0];
                var datafile = {
                    filename:currentfile.filename,
                    url:currentfile.url,
                    uploadId:currentfile.uploadId,
                    type:currentfile.mimetype.split('/')
                }
                console.log(datafile);
                fetch('http://localhost:3900/uploadfiledata',{
                    method:'POST',
                    headers: {'Content-Type': 'application/json'},
                    body: JSON.stringify(datafile)
                })
                .then(response => response.json())
                .then(data => {
                    if(data.message === "REGISTRO SUBIDO A LA BASE DE DATOS"){
                        this.uploadeddata.push(datafile);
                        this.showuploadeddata();
                    }
                });
            }
        };
        if(this.uploadeddata.length < 5){
            this.client.picker(options).open();
        }else{
            this.subir.disabled=true;
            this.subir.style.backgroundColor='gray';
            alert("SOLO PUEDE SUBIR 5 ARCHIVOS CADA VEZ QUE RECARGUE LA PAGINA");
        }
        
    }
}
