function drop(){
    const drop = document.querySelector(".dropdown");
    drop.classList.remove("dropstart");
    drop.classList.remove("dropdown");
    drop.classList.add("dropup");
    drop.classList.add("dropup-center");
    drop.classList.add("text-center");
}
function closeDrop(){
    const drop = document.querySelector(".dropup");
    drop.classList.remove("dropup-center");
    drop.classList.remove("dropup");
    drop.classList.add("dropdown");
    drop.classList.add("dropstart");
    drop.classList.add("text-center");
}
const header = document.querySelector("nav");
const sectionOne = document.querySelector(".main2");
const logo = document.querySelector(".logo");
const foot = document.querySelector(".row");
const deviceWidth = window.innerWidth;
const sectionOneOptions = {
    rootMargin: "-200px 0px 0px 0px"
};

const sectionOneObserver = new IntersectionObserver(function (
    entries,
    sectionOneObserver
) {
    entries.forEach(entry => {
        const deviceWidth = window.innerWidth;
        if (entry.isIntersecting && deviceWidth>=990) {
            header.classList.remove("flex-column");
            logo.setAttribute("width", "50px");
            logo.setAttribute("height", "35px");
        }
        else {
            header.classList.add("flex-column");
            logo.setAttribute("width", "100px");
            logo.setAttribute("height", "80px");
        }
    });
},
    sectionOneOptions);

sectionOneObserver.observe(sectionOne);