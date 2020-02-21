window.onload = unit;

//test within database
// let productsName = [
//     "K2 Roton G167",
//     "TRW Brake Cleaner V45",
//     "Boll BOLL ŚRODEK OCHRONY KAROSERII",
//     "LIQUI MOLI LONGTIME HIGH TECH 5W-30",
//     "K2 Brake Cleaner 600ml W105",
//     "Liqui Moli DODATEK DO BENZYNY 2642",
//     "LuK Zestaw sprzęgła 450 0015",
//     "Liqui Moli GTL 12",
//     "LuK Zestaw sprzęgła 600 0017"
// ];
// let productLeftStatus = [10, 50, 60, 62, 90, 190, 400, 560, 1200];
// let productRightStatus = [1500, 1400, 650, 600, 550, 500, 1100, 1150, 950];

let productNames = [];
let productLeftStatus = [];
let productRightStatus = [];

function unit() {
    getData();

    document.getElementById("sort_by_product").onclick = function () {
        alert("sort by product");
        sortByProduct();
    }
    document.getElementById("sort_by_brand").onclick = function () {
        alert("sort_by_brand");
        sortByBrand();
    }
    document.getElementById("sort_by_localization").onclick = function () {
        alert("sort_by_localization");
        sortByLocalization();
    }
    document.getElementById("hide_inaccessible").onclick = function () {
        alert("hide_inaccessible");
        hideInaccessible();
    }
    document.getElementById("show_quantity").onclick = function () {
        alert("show_quantity");
        showQuantity();
    }

}

function getData(){
    fetch('/showAllByName')
        .then((response) => {
            return response.json();
        })
        .then((data) => {
            console.log(data);

            for (let i = 0; i < data.length; i++) {
                productNames.push(data[i].brandName + " " + data[i].productCode + " " + data[i].productName);
                productLeftStatus.push(data[i].quantityOnRack);
                productRightStatus.push(data[i].quantityOnStorehouse);
            }

            fillLeftChart(productNames, productLeftStatus);
            fillRightChart(productNames, productRightStatus);
        });
}



function fillLeftChart(productsName, productLeftStatus) {
    let options = {
        series: [{
            data: productLeftStatus,
        }],
        chart: {
            type: 'bar',
            height: 600
        },
        plotOptions: {
            bar: {
                barHeight: '100%',
                distributed: false, //информация снизу, а также разный цвет полосок
                horizontal: true,
                dataLabels: {
                    position: 'bottom'
                },
            }
        },
        // colors: ['#33b2df'],
        dataLabels: {
            enabled: true,
            textAnchor: 'start',
            style: {
                colors: ['#343030']
            },
            formatter: function (val, opt) {
                return opt.w.globals.labels[opt.dataPointIndex] + ":  " + val + " szt."
            },
            offsetX: 30, //отступ текста
            dropShadow: {
                enabled: false
            }
        },
        stroke: {
            width: 1,
            colors: ['#fff']
        },
        xaxis: {
            categories: productsName,
        },
        yaxis: {
            labels: {
                show: false
            },
            reversed: false,
        },
        // title: {
        //     text: 'Custom DataLabels',
        //     align: 'center',
        //     floating: true
        // },
        // subtitle: {
        //     text: 'Category Names as DataLabels inside bars',
        //     align: 'center',
        // },
        tooltip: {
            theme: 'dark',
            x: {
                show: false
            },
            y: {
                title: {
                    formatter: function () {
                        return ''
                    }
                }
            }
        }
    };

    var chart = new ApexCharts(document.querySelector("#chart_left"), options);
    chart.render();
}

function fillRightChart(productsName, productRightStatus) {
    let options = {
        series: [{
            data: productRightStatus,
        }],
        chart: {
            type: 'bar',
            height: 600
        },
        plotOptions: {
            bar: {
                barHeight: '100%',
                distributed: false, //информация снизу, а также разный цвет полосок
                horizontal: true,
                dataLabels: {
                    position: 'bottom'
                },
            }
        },
        // colors: ['#33b2df', '#546E7A', '#d4526e', '#13d8aa', '#A5978B', '#2b908f', '#f9a3a4', '#90ee7e',
        //     '#f48024'],
        dataLabels: {
            enabled: true,
            textAnchor: 'start',
            style: {
                colors: ['#453f3f']
            },
            formatter: function (val, opt) {
                return val + " szt.";
            },
            offsetX: 30,
            dropShadow: {
                enabled: false
            }
        },
        stroke: {
            width: 1,
            colors: ['#fff']
        },
        xaxis: {
            categories: productsName,
        },
        yaxis: {
            labels: {
                show: false
            },
            reversed: true,
        },
        // title: {
        //     text: 'Custom DataLabels',
        //     align: 'center',
        //     floating: true
        // },
        // subtitle: {
        //     text: 'Category Names as DataLabels inside bars',
        //     align: 'center',
        // },
        tooltip: {
            theme: 'dark',
            x: {
                show: false
            },
            y: {
                title: {
                    formatter: function () {
                        return ''
                    }
                }
            }
        }
    };

    var chart = new ApexCharts(document.querySelector("#chart_right"), options);
    chart.render();
}

function sortByProduct(){
    
}

function sortByBrand() {

}

function sortByLocalization() {

}

function hideInaccessible() {

}

function showQuantity() {

}

