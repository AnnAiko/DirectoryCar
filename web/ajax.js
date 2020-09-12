
$(function () {
    $('#ajaxbutton').click(function () {
        var numberF = $('input[name=number]').val();
        var brandF = $('select[name=brand]').val();
        var colorF = $('select[name=color]').val();
        var yearF = $('select[name=year]').val();
        var countryF = $('select[name=country]').val();
        var firstNameF = $('input[name=firstName]').val();
        var lastNameF = $('input[name=lastName]').val();
        var addressF = $('input[name=address]').val();
        var phoneF = $('input[name=phone]').val();
        var dayF = $('select[name=day]').val();
        var monthF = $('select[name=month]').val();
        var yearsF = $('select[name=years]').val();


        var dateF = "";
        let month = ["Январь", "Февраль", "Март",
            "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь",
            "Октябрь", "Ноябрь", "Декабрь"];
        for (var i = 0, len = month.length; i < len; i++) {
            if (month[i] === monthF)
                ;
            {
                if ((i + 1) < 10) {
                    dateF += "0" + (i + 1) + "/";
                    break;
                } else {
                    dateF += (i + 1) + "/";
                    break;
                }
            }
        }
        if (Number.parseInt(dayF) < 10) {
            dateF += "0" + dayF + "/";
        } else {
            dateF + dayF + "/";
        }
        dateF += yearsF;
        var intYers = Number.parseInt(yearF);
        Data = new Date();
        Year = Data.getFullYear();
        Month = Data.getMonth();
        Day = Data.getDate();
        var dateAdd = Day + "/" + Month + "/" + Year;
        var objCar = {
            idCar: 0,
            number: numberF,
            brand: brandF,
            color: colorF,
            year: intYers,
            country: countryF,
            owner: {
                firstName: firstNameF,
                lastName: lastNameF,
                address: addressF,
                phone: phoneF,
                dataBirth: dateF
            },
            date: dateAdd
        }
        var jsonCar = JSON.stringify(objCar);
        $.ajax
                ({
                    type: "POST", //Метод передачи
                    contentType: "application/json",
                    data: jsonCar, //Передаваемые данные в JSON - формате
                    url: 'http://localhost:8080/testTask/add', //Название сервлета
                    success: function (data)//Если запрос удачен serverData
                    {
                        //console.log(jsonCar);
                        //console.log(data);
                        alert("Запись добавлена");
                    },
                    error: function ()//Если запрос не удачен e
                    {
                        alert("Запись не добавлена");
                    }
                });

    });
});
