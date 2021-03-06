<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Игра Быки и коровы</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="styles/styles.css" type="text/css">
</head>
<body>

<div id="content">
    <img src="images/bull.svg" alt="" width="144" height="114">
    <h3>Регистрация Быки и коровы</h3>
    <% out.println("<form id=\"login\" method=\"post\" action=\"" + request.getContextPath() + "/reg\">"); %>
    <h5>Username:</h5>
    <%
        if (request.getParameter("username") != null) {
            out.println("<input type=\"text\" name=\"username\" placeholder=\"Username\" value=\"" + request.getParameter("username") + "\" required>");
        } else {
            out.println("<input type=\"text\" name=\"username\" placeholder=\"Username\" required>");
        }
    %>
    <h5>Email:</h5>
    <%
        if (request.getParameter("email") != null) {
            out.println("<input type=\"email\" name=\"email\" placeholder=\"Email\" value=\"" + request.getParameter("email") + "\" required>");
        } else {
            out.println("<input type=\"email\" name=\"email\" placeholder=\"Email\" required>");
        }
    %>
    <h5>Пароль:</h5>

    <input type="password" name="pass" placeholder="Пароль" required>

    <h5>Пол:</h5>
    <%
        if (request.getParameter("gender") != null) {
            if (request.getParameter("gender").equals("М")) {
                out.println(" <div>\n" +
                        "            <input type=\"radio\" name=\"gender\" value=\"М\" checked required> Мужcкой\n" +
                        "            <input type=\"radio\" name=\"gender\" value=\"Ж\"> Женский\n" +
                        "        </div>");
            } else if (request.getParameter("gender").equals("Ж")) {
                out.println(" <div>\n" +
                        "            <input type=\"radio\" name=\"gender\" value=\"М\" required> Мужcкой\n" +
                        "            <input type=\"radio\" name=\"gender\" value=\"Ж\" checked> Женский\n" +
                        "        </div>");
            }

        } else {
            out.println(" <div>\n" +
                    "            <input type=\"radio\" name=\"gender\" value=\"М\" required> Мужcкой\n" +
                    "            <input type=\"radio\" name=\"gender\" value=\"Ж\"> Женский\n" +
                    "        </div>");
        }
    %>
    <h5>Страна:</h5>
    <%
        if (request.getParameter("country") != null) {
            out.println(" <select name=\"country\" id=\"countriesList\" required>\n" +
                    "            <option value=\"" + request.getParameter("country") + "\" selected>" + request.getParameter("country") + " </option>\n" +
                    "            <option value=\"Afganistan\">Afghanistan</option>\n" +
                    "            <option value=\"Albania\">Albania</option>\n" +
                    "            <option value=\"Algeria\">Algeria</option>\n" +
                    "            <option value=\"American Samoa\">American Samoa</option>\n" +
                    "            <option value=\"Andorra\">Andorra</option>\n" +
                    "            <option value=\"Angola\">Angola</option>\n" +
                    "            <option value=\"Anguilla\">Anguilla</option>\n" +
                    "            <option value=\"Antigua & Barbuda\">Antigua & Barbuda</option>\n" +
                    "            <option value=\"Argentina\">Argentina</option>\n" +
                    "            <option value=\"Armenia\">Armenia</option>\n" +
                    "            <option value=\"Aruba\">Aruba</option>\n" +
                    "            <option value=\"Australia\">Australia</option>\n" +
                    "            <option value=\"Austria\">Austria</option>\n" +
                    "            <option value=\"Azerbaijan\">Azerbaijan</option>\n" +
                    "            <option value=\"Bahamas\">Bahamas</option>\n" +
                    "            <option value=\"Bahrain\">Bahrain</option>\n" +
                    "            <option value=\"Bangladesh\">Bangladesh</option>\n" +
                    "            <option value=\"Barbados\">Barbados</option>\n" +
                    "            <option value=\"Belarus\">Belarus</option>\n" +
                    "            <option value=\"Belgium\">Belgium</option>\n" +
                    "            <option value=\"Belize\">Belize</option>\n" +
                    "            <option value=\"Benin\">Benin</option>\n" +
                    "            <option value=\"Bermuda\">Bermuda</option>\n" +
                    "            <option value=\"Bhutan\">Bhutan</option>\n" +
                    "            <option value=\"Bolivia\">Bolivia</option>\n" +
                    "            <option value=\"Bonaire\">Bonaire</option>\n" +
                    "            <option value=\"Bosnia & Herzegovina\">Bosnia & Herzegovina</option>\n" +
                    "            <option value=\"Botswana\">Botswana</option>\n" +
                    "            <option value=\"Brazil\">Brazil</option>\n" +
                    "            <option value=\"British Indian Ocean Ter\">British Indian Ocean Ter</option>\n" +
                    "            <option value=\"Brunei\">Brunei</option>\n" +
                    "            <option value=\"Bulgaria\">Bulgaria</option>\n" +
                    "            <option value=\"Burkina Faso\">Burkina Faso</option>\n" +
                    "            <option value=\"Burundi\">Burundi</option>\n" +
                    "            <option value=\"Cambodia\">Cambodia</option>\n" +
                    "            <option value=\"Cameroon\">Cameroon</option>\n" +
                    "            <option value=\"Canada\">Canada</option>\n" +
                    "            <option value=\"Canary Islands\">Canary Islands</option>\n" +
                    "            <option value=\"Cape Verde\">Cape Verde</option>\n" +
                    "            <option value=\"Cayman Islands\">Cayman Islands</option>\n" +
                    "            <option value=\"Central African Republic\">Central African Republic</option>\n" +
                    "            <option value=\"Chad\">Chad</option>\n" +
                    "            <option value=\"Channel Islands\">Channel Islands</option>\n" +
                    "            <option value=\"Chile\">Chile</option>\n" +
                    "            <option value=\"China\">China</option>\n" +
                    "            <option value=\"Christmas Island\">Christmas Island</option>\n" +
                    "            <option value=\"Cocos Island\">Cocos Island</option>\n" +
                    "            <option value=\"Colombia\">Colombia</option>\n" +
                    "            <option value=\"Comoros\">Comoros</option>\n" +
                    "            <option value=\"Congo\">Congo</option>\n" +
                    "            <option value=\"Cook Islands\">Cook Islands</option>\n" +
                    "            <option value=\"Costa Rica\">Costa Rica</option>\n" +
                    "            <option value=\"Cote DIvoire\">Cote DIvoire</option>\n" +
                    "            <option value=\"Croatia\">Croatia</option>\n" +
                    "            <option value=\"Cuba\">Cuba</option>\n" +
                    "            <option value=\"Curaco\">Curacao</option>\n" +
                    "            <option value=\"Cyprus\">Cyprus</option>\n" +
                    "            <option value=\"Czech Republic\">Czech Republic</option>\n" +
                    "            <option value=\"Denmark\">Denmark</option>\n" +
                    "            <option value=\"Djibouti\">Djibouti</option>\n" +
                    "            <option value=\"Dominica\">Dominica</option>\n" +
                    "            <option value=\"Dominican Republic\">Dominican Republic</option>\n" +
                    "            <option value=\"East Timor\">East Timor</option>\n" +
                    "            <option value=\"Ecuador\">Ecuador</option>\n" +
                    "            <option value=\"Egypt\">Egypt</option>\n" +
                    "            <option value=\"El Salvador\">El Salvador</option>\n" +
                    "            <option value=\"Equatorial Guinea\">Equatorial Guinea</option>\n" +
                    "            <option value=\"Eritrea\">Eritrea</option>\n" +
                    "            <option value=\"Estonia\">Estonia</option>\n" +
                    "            <option value=\"Ethiopia\">Ethiopia</option>\n" +
                    "            <option value=\"Falkland Islands\">Falkland Islands</option>\n" +
                    "            <option value=\"Faroe Islands\">Faroe Islands</option>\n" +
                    "            <option value=\"Fiji\">Fiji</option>\n" +
                    "            <option value=\"Finland\">Finland</option>\n" +
                    "            <option value=\"France\">France</option>\n" +
                    "            <option value=\"French Guiana\">French Guiana</option>\n" +
                    "            <option value=\"French Polynesia\">French Polynesia</option>\n" +
                    "            <option value=\"French Southern Ter\">French Southern Ter</option>\n" +
                    "            <option value=\"Gabon\">Gabon</option>\n" +
                    "            <option value=\"Gambia\">Gambia</option>\n" +
                    "            <option value=\"Georgia\">Georgia</option>\n" +
                    "            <option value=\"Germany\">Germany</option>\n" +
                    "            <option value=\"Ghana\">Ghana</option>\n" +
                    "            <option value=\"Gibraltar\">Gibraltar</option>\n" +
                    "            <option value=\"Great Britain\">Great Britain</option>\n" +
                    "            <option value=\"Greece\">Greece</option>\n" +
                    "            <option value=\"Greenland\">Greenland</option>\n" +
                    "            <option value=\"Grenada\">Grenada</option>\n" +
                    "            <option value=\"Guadeloupe\">Guadeloupe</option>\n" +
                    "            <option value=\"Guam\">Guam</option>\n" +
                    "            <option value=\"Guatemala\">Guatemala</option>\n" +
                    "            <option value=\"Guinea\">Guinea</option>\n" +
                    "            <option value=\"Guyana\">Guyana</option>\n" +
                    "            <option value=\"Haiti\">Haiti</option>\n" +
                    "            <option value=\"Hawaii\">Hawaii</option>\n" +
                    "            <option value=\"Honduras\">Honduras</option>\n" +
                    "            <option value=\"Hong Kong\">Hong Kong</option>\n" +
                    "            <option value=\"Hungary\">Hungary</option>\n" +
                    "            <option value=\"Iceland\">Iceland</option>\n" +
                    "            <option value=\"Indonesia\">Indonesia</option>\n" +
                    "            <option value=\"India\">India</option>\n" +
                    "            <option value=\"Iran\">Iran</option>\n" +
                    "            <option value=\"Iraq\">Iraq</option>\n" +
                    "            <option value=\"Ireland\">Ireland</option>\n" +
                    "            <option value=\"Isle of Man\">Isle of Man</option>\n" +
                    "            <option value=\"Israel\">Israel</option>\n" +
                    "            <option value=\"Italy\">Italy</option>\n" +
                    "            <option value=\"Jamaica\">Jamaica</option>\n" +
                    "            <option value=\"Japan\">Japan</option>\n" +
                    "            <option value=\"Jordan\">Jordan</option>\n" +
                    "            <option value=\"Kazakhstan\">Kazakhstan</option>\n" +
                    "            <option value=\"Kenya\">Kenya</option>\n" +
                    "            <option value=\"Kiribati\">Kiribati</option>\n" +
                    "            <option value=\"Korea North\">Korea North</option>\n" +
                    "            <option value=\"Korea Sout\">Korea South</option>\n" +
                    "            <option value=\"Kuwait\">Kuwait</option>\n" +
                    "            <option value=\"Kyrgyzstan\">Kyrgyzstan</option>\n" +
                    "            <option value=\"Laos\">Laos</option>\n" +
                    "            <option value=\"Latvia\">Latvia</option>\n" +
                    "            <option value=\"Lebanon\">Lebanon</option>\n" +
                    "            <option value=\"Lesotho\">Lesotho</option>\n" +
                    "            <option value=\"Liberia\">Liberia</option>\n" +
                    "            <option value=\"Libya\">Libya</option>\n" +
                    "            <option value=\"Liechtenstein\">Liechtenstein</option>\n" +
                    "            <option value=\"Lithuania\">Lithuania</option>\n" +
                    "            <option value=\"Luxembourg\">Luxembourg</option>\n" +
                    "            <option value=\"Macau\">Macau</option>\n" +
                    "            <option value=\"Macedonia\">Macedonia</option>\n" +
                    "            <option value=\"Madagascar\">Madagascar</option>\n" +
                    "            <option value=\"Malaysia\">Malaysia</option>\n" +
                    "            <option value=\"Malawi\">Malawi</option>\n" +
                    "            <option value=\"Maldives\">Maldives</option>\n" +
                    "            <option value=\"Mali\">Mali</option>\n" +
                    "            <option value=\"Malta\">Malta</option>\n" +
                    "            <option value=\"Marshall Islands\">Marshall Islands</option>\n" +
                    "            <option value=\"Martinique\">Martinique</option>\n" +
                    "            <option value=\"Mauritania\">Mauritania</option>\n" +
                    "            <option value=\"Mauritius\">Mauritius</option>\n" +
                    "            <option value=\"Mayotte\">Mayotte</option>\n" +
                    "            <option value=\"Mexico\">Mexico</option>\n" +
                    "            <option value=\"Midway Islands\">Midway Islands</option>\n" +
                    "            <option value=\"Moldova\">Moldova</option>\n" +
                    "            <option value=\"Monaco\">Monaco</option>\n" +
                    "            <option value=\"Mongolia\">Mongolia</option>\n" +
                    "            <option value=\"Montserrat\">Montserrat</option>\n" +
                    "            <option value=\"Morocco\">Morocco</option>\n" +
                    "            <option value=\"Mozambique\">Mozambique</option>\n" +
                    "            <option value=\"Myanmar\">Myanmar</option>\n" +
                    "            <option value=\"Nambia\">Nambia</option>\n" +
                    "            <option value=\"Nauru\">Nauru</option>\n" +
                    "            <option value=\"Nepal\">Nepal</option>\n" +
                    "            <option value=\"Netherland Antilles\">Netherland Antilles</option>\n" +
                    "            <option value=\"Netherlands\">Netherlands (Holland, Europe)</option>\n" +
                    "            <option value=\"Nevis\">Nevis</option>\n" +
                    "            <option value=\"New Caledonia\">New Caledonia</option>\n" +
                    "            <option value=\"New Zealand\">New Zealand</option>\n" +
                    "            <option value=\"Nicaragua\">Nicaragua</option>\n" +
                    "            <option value=\"Niger\">Niger</option>\n" +
                    "            <option value=\"Nigeria\">Nigeria</option>\n" +
                    "            <option value=\"Niue\">Niue</option>\n" +
                    "            <option value=\"Norfolk Island\">Norfolk Island</option>\n" +
                    "            <option value=\"Norway\">Norway</option>\n" +
                    "            <option value=\"Oman\">Oman</option>\n" +
                    "            <option value=\"Pakistan\">Pakistan</option>\n" +
                    "            <option value=\"Palau Island\">Palau Island</option>\n" +
                    "            <option value=\"Palestine\">Palestine</option>\n" +
                    "            <option value=\"Panama\">Panama</option>\n" +
                    "            <option value=\"Papua New Guinea\">Papua New Guinea</option>\n" +
                    "            <option value=\"Paraguay\">Paraguay</option>\n" +
                    "            <option value=\"Peru\">Peru</option>\n" +
                    "            <option value=\"Phillipines\">Philippines</option>\n" +
                    "            <option value=\"Pitcairn Island\">Pitcairn Island</option>\n" +
                    "            <option value=\"Poland\">Poland</option>\n" +
                    "            <option value=\"Portugal\">Portugal</option>\n" +
                    "            <option value=\"Puerto Rico\">Puerto Rico</option>\n" +
                    "            <option value=\"Qatar\">Qatar</option>\n" +
                    "            <option value=\"Republic of Montenegro\">Republic of Montenegro</option>\n" +
                    "            <option value=\"Republic of Serbia\">Republic of Serbia</option>\n" +
                    "            <option value=\"Reunion\">Reunion</option>\n" +
                    "            <option value=\"Romania\">Romania</option>\n" +
                    "            <option value=\"Russia\">Russia</option>\n" +
                    "            <option value=\"Rwanda\">Rwanda</option>\n" +
                    "            <option value=\"St Barthelemy\">St Barthelemy</option>\n" +
                    "            <option value=\"St Eustatius\">St Eustatius</option>\n" +
                    "            <option value=\"St Helena\">St Helena</option>\n" +
                    "            <option value=\"St Kitts-Nevis\">St Kitts-Nevis</option>\n" +
                    "            <option value=\"St Lucia\">St Lucia</option>\n" +
                    "            <option value=\"St Maarten\">St Maarten</option>\n" +
                    "            <option value=\"St Pierre & Miquelon\">St Pierre & Miquelon</option>\n" +
                    "            <option value=\"St Vincent & Grenadines\">St Vincent & Grenadines</option>\n" +
                    "            <option value=\"Saipan\">Saipan</option>\n" +
                    "            <option value=\"Samoa\">Samoa</option>\n" +
                    "            <option value=\"Samoa American\">Samoa American</option>\n" +
                    "            <option value=\"San Marino\">San Marino</option>\n" +
                    "            <option value=\"Sao Tome & Principe\">Sao Tome & Principe</option>\n" +
                    "            <option value=\"Saudi Arabia\">Saudi Arabia</option>\n" +
                    "            <option value=\"Senegal\">Senegal</option>\n" +
                    "            <option value=\"Seychelles\">Seychelles</option>\n" +
                    "            <option value=\"Sierra Leone\">Sierra Leone</option>\n" +
                    "            <option value=\"Singapore\">Singapore</option>\n" +
                    "            <option value=\"Slovakia\">Slovakia</option>\n" +
                    "            <option value=\"Slovenia\">Slovenia</option>\n" +
                    "            <option value=\"Solomon Islands\">Solomon Islands</option>\n" +
                    "            <option value=\"Somalia\">Somalia</option>\n" +
                    "            <option value=\"South Africa\">South Africa</option>\n" +
                    "            <option value=\"Spain\">Spain</option>\n" +
                    "            <option value=\"Sri Lanka\">Sri Lanka</option>\n" +
                    "            <option value=\"Sudan\">Sudan</option>\n" +
                    "            <option value=\"Suriname\">Suriname</option>\n" +
                    "            <option value=\"Swaziland\">Swaziland</option>\n" +
                    "            <option value=\"Sweden\">Sweden</option>\n" +
                    "            <option value=\"Switzerland\">Switzerland</option>\n" +
                    "            <option value=\"Syria\">Syria</option>\n" +
                    "            <option value=\"Tahiti\">Tahiti</option>\n" +
                    "            <option value=\"Taiwan\">Taiwan</option>\n" +
                    "            <option value=\"Tajikistan\">Tajikistan</option>\n" +
                    "            <option value=\"Tanzania\">Tanzania</option>\n" +
                    "            <option value=\"Thailand\">Thailand</option>\n" +
                    "            <option value=\"Togo\">Togo</option>\n" +
                    "            <option value=\"Tokelau\">Tokelau</option>\n" +
                    "            <option value=\"Tonga\">Tonga</option>\n" +
                    "            <option value=\"Trinidad & Tobago\">Trinidad & Tobago</option>\n" +
                    "            <option value=\"Tunisia\">Tunisia</option>\n" +
                    "            <option value=\"Turkey\">Turkey</option>\n" +
                    "            <option value=\"Turkmenistan\">Turkmenistan</option>\n" +
                    "            <option value=\"Turks & Caicos Is\">Turks & Caicos Is</option>\n" +
                    "            <option value=\"Tuvalu\">Tuvalu</option>\n" +
                    "            <option value=\"Uganda\">Uganda</option>\n" +
                    "            <option value=\"United Kingdom\">United Kingdom</option>\n" +
                    "            <option value=\"Ukraine\">Ukraine</option>\n" +
                    "            <option value=\"United Arab Erimates\">United Arab Emirates</option>\n" +
                    "            <option value=\"United States of America\">United States of America</option>\n" +
                    "            <option value=\"Uraguay\">Uruguay</option>\n" +
                    "            <option value=\"Uzbekistan\">Uzbekistan</option>\n" +
                    "            <option value=\"Vanuatu\">Vanuatu</option>\n" +
                    "            <option value=\"Vatican City State\">Vatican City State</option>\n" +
                    "            <option value=\"Venezuela\">Venezuela</option>\n" +
                    "            <option value=\"Vietnam\">Vietnam</option>\n" +
                    "            <option value=\"Virgin Islands (Brit)\">Virgin Islands (Brit)</option>\n" +
                    "            <option value=\"Virgin Islands (USA)\">Virgin Islands (USA)</option>\n" +
                    "            <option value=\"Wake Island\">Wake Island</option>\n" +
                    "            <option value=\"Wallis & Futana Is\">Wallis & Futana Is</option>\n" +
                    "            <option value=\"Yemen\">Yemen</option>\n" +
                    "            <option value=\"Zaire\">Zaire</option>\n" +
                    "            <option value=\"Zambia\">Zambia</option>\n" +
                    "            <option value=\"Zimbabwe\">Zimbabwe</option>\n" +
                    "        </select>");
        } else {
            out.println(" <select name=\"country\" id=\"countriesList\" required>\n" +
                    "            <option value=\"\" selected disabled hidden>Выберите страну</option>\n" +
                    "            <option value=\"Afganistan\">Afghanistan</option>\n" +
                    "            <option value=\"Albania\">Albania</option>\n" +
                    "            <option value=\"Algeria\">Algeria</option>\n" +
                    "            <option value=\"American Samoa\">American Samoa</option>\n" +
                    "            <option value=\"Andorra\">Andorra</option>\n" +
                    "            <option value=\"Angola\">Angola</option>\n" +
                    "            <option value=\"Anguilla\">Anguilla</option>\n" +
                    "            <option value=\"Antigua & Barbuda\">Antigua & Barbuda</option>\n" +
                    "            <option value=\"Argentina\">Argentina</option>\n" +
                    "            <option value=\"Armenia\">Armenia</option>\n" +
                    "            <option value=\"Aruba\">Aruba</option>\n" +
                    "            <option value=\"Australia\">Australia</option>\n" +
                    "            <option value=\"Austria\">Austria</option>\n" +
                    "            <option value=\"Azerbaijan\">Azerbaijan</option>\n" +
                    "            <option value=\"Bahamas\">Bahamas</option>\n" +
                    "            <option value=\"Bahrain\">Bahrain</option>\n" +
                    "            <option value=\"Bangladesh\">Bangladesh</option>\n" +
                    "            <option value=\"Barbados\">Barbados</option>\n" +
                    "            <option value=\"Belarus\">Belarus</option>\n" +
                    "            <option value=\"Belgium\">Belgium</option>\n" +
                    "            <option value=\"Belize\">Belize</option>\n" +
                    "            <option value=\"Benin\">Benin</option>\n" +
                    "            <option value=\"Bermuda\">Bermuda</option>\n" +
                    "            <option value=\"Bhutan\">Bhutan</option>\n" +
                    "            <option value=\"Bolivia\">Bolivia</option>\n" +
                    "            <option value=\"Bonaire\">Bonaire</option>\n" +
                    "            <option value=\"Bosnia & Herzegovina\">Bosnia & Herzegovina</option>\n" +
                    "            <option value=\"Botswana\">Botswana</option>\n" +
                    "            <option value=\"Brazil\">Brazil</option>\n" +
                    "            <option value=\"British Indian Ocean Ter\">British Indian Ocean Ter</option>\n" +
                    "            <option value=\"Brunei\">Brunei</option>\n" +
                    "            <option value=\"Bulgaria\">Bulgaria</option>\n" +
                    "            <option value=\"Burkina Faso\">Burkina Faso</option>\n" +
                    "            <option value=\"Burundi\">Burundi</option>\n" +
                    "            <option value=\"Cambodia\">Cambodia</option>\n" +
                    "            <option value=\"Cameroon\">Cameroon</option>\n" +
                    "            <option value=\"Canada\">Canada</option>\n" +
                    "            <option value=\"Canary Islands\">Canary Islands</option>\n" +
                    "            <option value=\"Cape Verde\">Cape Verde</option>\n" +
                    "            <option value=\"Cayman Islands\">Cayman Islands</option>\n" +
                    "            <option value=\"Central African Republic\">Central African Republic</option>\n" +
                    "            <option value=\"Chad\">Chad</option>\n" +
                    "            <option value=\"Channel Islands\">Channel Islands</option>\n" +
                    "            <option value=\"Chile\">Chile</option>\n" +
                    "            <option value=\"China\">China</option>\n" +
                    "            <option value=\"Christmas Island\">Christmas Island</option>\n" +
                    "            <option value=\"Cocos Island\">Cocos Island</option>\n" +
                    "            <option value=\"Colombia\">Colombia</option>\n" +
                    "            <option value=\"Comoros\">Comoros</option>\n" +
                    "            <option value=\"Congo\">Congo</option>\n" +
                    "            <option value=\"Cook Islands\">Cook Islands</option>\n" +
                    "            <option value=\"Costa Rica\">Costa Rica</option>\n" +
                    "            <option value=\"Cote DIvoire\">Cote DIvoire</option>\n" +
                    "            <option value=\"Croatia\">Croatia</option>\n" +
                    "            <option value=\"Cuba\">Cuba</option>\n" +
                    "            <option value=\"Curaco\">Curacao</option>\n" +
                    "            <option value=\"Cyprus\">Cyprus</option>\n" +
                    "            <option value=\"Czech Republic\">Czech Republic</option>\n" +
                    "            <option value=\"Denmark\">Denmark</option>\n" +
                    "            <option value=\"Djibouti\">Djibouti</option>\n" +
                    "            <option value=\"Dominica\">Dominica</option>\n" +
                    "            <option value=\"Dominican Republic\">Dominican Republic</option>\n" +
                    "            <option value=\"East Timor\">East Timor</option>\n" +
                    "            <option value=\"Ecuador\">Ecuador</option>\n" +
                    "            <option value=\"Egypt\">Egypt</option>\n" +
                    "            <option value=\"El Salvador\">El Salvador</option>\n" +
                    "            <option value=\"Equatorial Guinea\">Equatorial Guinea</option>\n" +
                    "            <option value=\"Eritrea\">Eritrea</option>\n" +
                    "            <option value=\"Estonia\">Estonia</option>\n" +
                    "            <option value=\"Ethiopia\">Ethiopia</option>\n" +
                    "            <option value=\"Falkland Islands\">Falkland Islands</option>\n" +
                    "            <option value=\"Faroe Islands\">Faroe Islands</option>\n" +
                    "            <option value=\"Fiji\">Fiji</option>\n" +
                    "            <option value=\"Finland\">Finland</option>\n" +
                    "            <option value=\"France\">France</option>\n" +
                    "            <option value=\"French Guiana\">French Guiana</option>\n" +
                    "            <option value=\"French Polynesia\">French Polynesia</option>\n" +
                    "            <option value=\"French Southern Ter\">French Southern Ter</option>\n" +
                    "            <option value=\"Gabon\">Gabon</option>\n" +
                    "            <option value=\"Gambia\">Gambia</option>\n" +
                    "            <option value=\"Georgia\">Georgia</option>\n" +
                    "            <option value=\"Germany\">Germany</option>\n" +
                    "            <option value=\"Ghana\">Ghana</option>\n" +
                    "            <option value=\"Gibraltar\">Gibraltar</option>\n" +
                    "            <option value=\"Great Britain\">Great Britain</option>\n" +
                    "            <option value=\"Greece\">Greece</option>\n" +
                    "            <option value=\"Greenland\">Greenland</option>\n" +
                    "            <option value=\"Grenada\">Grenada</option>\n" +
                    "            <option value=\"Guadeloupe\">Guadeloupe</option>\n" +
                    "            <option value=\"Guam\">Guam</option>\n" +
                    "            <option value=\"Guatemala\">Guatemala</option>\n" +
                    "            <option value=\"Guinea\">Guinea</option>\n" +
                    "            <option value=\"Guyana\">Guyana</option>\n" +
                    "            <option value=\"Haiti\">Haiti</option>\n" +
                    "            <option value=\"Hawaii\">Hawaii</option>\n" +
                    "            <option value=\"Honduras\">Honduras</option>\n" +
                    "            <option value=\"Hong Kong\">Hong Kong</option>\n" +
                    "            <option value=\"Hungary\">Hungary</option>\n" +
                    "            <option value=\"Iceland\">Iceland</option>\n" +
                    "            <option value=\"Indonesia\">Indonesia</option>\n" +
                    "            <option value=\"India\">India</option>\n" +
                    "            <option value=\"Iran\">Iran</option>\n" +
                    "            <option value=\"Iraq\">Iraq</option>\n" +
                    "            <option value=\"Ireland\">Ireland</option>\n" +
                    "            <option value=\"Isle of Man\">Isle of Man</option>\n" +
                    "            <option value=\"Israel\">Israel</option>\n" +
                    "            <option value=\"Italy\">Italy</option>\n" +
                    "            <option value=\"Jamaica\">Jamaica</option>\n" +
                    "            <option value=\"Japan\">Japan</option>\n" +
                    "            <option value=\"Jordan\">Jordan</option>\n" +
                    "            <option value=\"Kazakhstan\">Kazakhstan</option>\n" +
                    "            <option value=\"Kenya\">Kenya</option>\n" +
                    "            <option value=\"Kiribati\">Kiribati</option>\n" +
                    "            <option value=\"Korea North\">Korea North</option>\n" +
                    "            <option value=\"Korea Sout\">Korea South</option>\n" +
                    "            <option value=\"Kuwait\">Kuwait</option>\n" +
                    "            <option value=\"Kyrgyzstan\">Kyrgyzstan</option>\n" +
                    "            <option value=\"Laos\">Laos</option>\n" +
                    "            <option value=\"Latvia\">Latvia</option>\n" +
                    "            <option value=\"Lebanon\">Lebanon</option>\n" +
                    "            <option value=\"Lesotho\">Lesotho</option>\n" +
                    "            <option value=\"Liberia\">Liberia</option>\n" +
                    "            <option value=\"Libya\">Libya</option>\n" +
                    "            <option value=\"Liechtenstein\">Liechtenstein</option>\n" +
                    "            <option value=\"Lithuania\">Lithuania</option>\n" +
                    "            <option value=\"Luxembourg\">Luxembourg</option>\n" +
                    "            <option value=\"Macau\">Macau</option>\n" +
                    "            <option value=\"Macedonia\">Macedonia</option>\n" +
                    "            <option value=\"Madagascar\">Madagascar</option>\n" +
                    "            <option value=\"Malaysia\">Malaysia</option>\n" +
                    "            <option value=\"Malawi\">Malawi</option>\n" +
                    "            <option value=\"Maldives\">Maldives</option>\n" +
                    "            <option value=\"Mali\">Mali</option>\n" +
                    "            <option value=\"Malta\">Malta</option>\n" +
                    "            <option value=\"Marshall Islands\">Marshall Islands</option>\n" +
                    "            <option value=\"Martinique\">Martinique</option>\n" +
                    "            <option value=\"Mauritania\">Mauritania</option>\n" +
                    "            <option value=\"Mauritius\">Mauritius</option>\n" +
                    "            <option value=\"Mayotte\">Mayotte</option>\n" +
                    "            <option value=\"Mexico\">Mexico</option>\n" +
                    "            <option value=\"Midway Islands\">Midway Islands</option>\n" +
                    "            <option value=\"Moldova\">Moldova</option>\n" +
                    "            <option value=\"Monaco\">Monaco</option>\n" +
                    "            <option value=\"Mongolia\">Mongolia</option>\n" +
                    "            <option value=\"Montserrat\">Montserrat</option>\n" +
                    "            <option value=\"Morocco\">Morocco</option>\n" +
                    "            <option value=\"Mozambique\">Mozambique</option>\n" +
                    "            <option value=\"Myanmar\">Myanmar</option>\n" +
                    "            <option value=\"Nambia\">Nambia</option>\n" +
                    "            <option value=\"Nauru\">Nauru</option>\n" +
                    "            <option value=\"Nepal\">Nepal</option>\n" +
                    "            <option value=\"Netherland Antilles\">Netherland Antilles</option>\n" +
                    "            <option value=\"Netherlands\">Netherlands (Holland, Europe)</option>\n" +
                    "            <option value=\"Nevis\">Nevis</option>\n" +
                    "            <option value=\"New Caledonia\">New Caledonia</option>\n" +
                    "            <option value=\"New Zealand\">New Zealand</option>\n" +
                    "            <option value=\"Nicaragua\">Nicaragua</option>\n" +
                    "            <option value=\"Niger\">Niger</option>\n" +
                    "            <option value=\"Nigeria\">Nigeria</option>\n" +
                    "            <option value=\"Niue\">Niue</option>\n" +
                    "            <option value=\"Norfolk Island\">Norfolk Island</option>\n" +
                    "            <option value=\"Norway\">Norway</option>\n" +
                    "            <option value=\"Oman\">Oman</option>\n" +
                    "            <option value=\"Pakistan\">Pakistan</option>\n" +
                    "            <option value=\"Palau Island\">Palau Island</option>\n" +
                    "            <option value=\"Palestine\">Palestine</option>\n" +
                    "            <option value=\"Panama\">Panama</option>\n" +
                    "            <option value=\"Papua New Guinea\">Papua New Guinea</option>\n" +
                    "            <option value=\"Paraguay\">Paraguay</option>\n" +
                    "            <option value=\"Peru\">Peru</option>\n" +
                    "            <option value=\"Phillipines\">Philippines</option>\n" +
                    "            <option value=\"Pitcairn Island\">Pitcairn Island</option>\n" +
                    "            <option value=\"Poland\">Poland</option>\n" +
                    "            <option value=\"Portugal\">Portugal</option>\n" +
                    "            <option value=\"Puerto Rico\">Puerto Rico</option>\n" +
                    "            <option value=\"Qatar\">Qatar</option>\n" +
                    "            <option value=\"Republic of Montenegro\">Republic of Montenegro</option>\n" +
                    "            <option value=\"Republic of Serbia\">Republic of Serbia</option>\n" +
                    "            <option value=\"Reunion\">Reunion</option>\n" +
                    "            <option value=\"Romania\">Romania</option>\n" +
                    "            <option value=\"Russia\">Russia</option>\n" +
                    "            <option value=\"Rwanda\">Rwanda</option>\n" +
                    "            <option value=\"St Barthelemy\">St Barthelemy</option>\n" +
                    "            <option value=\"St Eustatius\">St Eustatius</option>\n" +
                    "            <option value=\"St Helena\">St Helena</option>\n" +
                    "            <option value=\"St Kitts-Nevis\">St Kitts-Nevis</option>\n" +
                    "            <option value=\"St Lucia\">St Lucia</option>\n" +
                    "            <option value=\"St Maarten\">St Maarten</option>\n" +
                    "            <option value=\"St Pierre & Miquelon\">St Pierre & Miquelon</option>\n" +
                    "            <option value=\"St Vincent & Grenadines\">St Vincent & Grenadines</option>\n" +
                    "            <option value=\"Saipan\">Saipan</option>\n" +
                    "            <option value=\"Samoa\">Samoa</option>\n" +
                    "            <option value=\"Samoa American\">Samoa American</option>\n" +
                    "            <option value=\"San Marino\">San Marino</option>\n" +
                    "            <option value=\"Sao Tome & Principe\">Sao Tome & Principe</option>\n" +
                    "            <option value=\"Saudi Arabia\">Saudi Arabia</option>\n" +
                    "            <option value=\"Senegal\">Senegal</option>\n" +
                    "            <option value=\"Seychelles\">Seychelles</option>\n" +
                    "            <option value=\"Sierra Leone\">Sierra Leone</option>\n" +
                    "            <option value=\"Singapore\">Singapore</option>\n" +
                    "            <option value=\"Slovakia\">Slovakia</option>\n" +
                    "            <option value=\"Slovenia\">Slovenia</option>\n" +
                    "            <option value=\"Solomon Islands\">Solomon Islands</option>\n" +
                    "            <option value=\"Somalia\">Somalia</option>\n" +
                    "            <option value=\"South Africa\">South Africa</option>\n" +
                    "            <option value=\"Spain\">Spain</option>\n" +
                    "            <option value=\"Sri Lanka\">Sri Lanka</option>\n" +
                    "            <option value=\"Sudan\">Sudan</option>\n" +
                    "            <option value=\"Suriname\">Suriname</option>\n" +
                    "            <option value=\"Swaziland\">Swaziland</option>\n" +
                    "            <option value=\"Sweden\">Sweden</option>\n" +
                    "            <option value=\"Switzerland\">Switzerland</option>\n" +
                    "            <option value=\"Syria\">Syria</option>\n" +
                    "            <option value=\"Tahiti\">Tahiti</option>\n" +
                    "            <option value=\"Taiwan\">Taiwan</option>\n" +
                    "            <option value=\"Tajikistan\">Tajikistan</option>\n" +
                    "            <option value=\"Tanzania\">Tanzania</option>\n" +
                    "            <option value=\"Thailand\">Thailand</option>\n" +
                    "            <option value=\"Togo\">Togo</option>\n" +
                    "            <option value=\"Tokelau\">Tokelau</option>\n" +
                    "            <option value=\"Tonga\">Tonga</option>\n" +
                    "            <option value=\"Trinidad & Tobago\">Trinidad & Tobago</option>\n" +
                    "            <option value=\"Tunisia\">Tunisia</option>\n" +
                    "            <option value=\"Turkey\">Turkey</option>\n" +
                    "            <option value=\"Turkmenistan\">Turkmenistan</option>\n" +
                    "            <option value=\"Turks & Caicos Is\">Turks & Caicos Is</option>\n" +
                    "            <option value=\"Tuvalu\">Tuvalu</option>\n" +
                    "            <option value=\"Uganda\">Uganda</option>\n" +
                    "            <option value=\"United Kingdom\">United Kingdom</option>\n" +
                    "            <option value=\"Ukraine\">Ukraine</option>\n" +
                    "            <option value=\"United Arab Erimates\">United Arab Emirates</option>\n" +
                    "            <option value=\"United States of America\">United States of America</option>\n" +
                    "            <option value=\"Uraguay\">Uruguay</option>\n" +
                    "            <option value=\"Uzbekistan\">Uzbekistan</option>\n" +
                    "            <option value=\"Vanuatu\">Vanuatu</option>\n" +
                    "            <option value=\"Vatican City State\">Vatican City State</option>\n" +
                    "            <option value=\"Venezuela\">Venezuela</option>\n" +
                    "            <option value=\"Vietnam\">Vietnam</option>\n" +
                    "            <option value=\"Virgin Islands (Brit)\">Virgin Islands (Brit)</option>\n" +
                    "            <option value=\"Virgin Islands (USA)\">Virgin Islands (USA)</option>\n" +
                    "            <option value=\"Wake Island\">Wake Island</option>\n" +
                    "            <option value=\"Wallis & Futana Is\">Wallis & Futana Is</option>\n" +
                    "            <option value=\"Yemen\">Yemen</option>\n" +
                    "            <option value=\"Zaire\">Zaire</option>\n" +
                    "            <option value=\"Zambia\">Zambia</option>\n" +
                    "            <option value=\"Zimbabwe\">Zimbabwe</option>\n" +
                    "        </select>");
        }
    %>
    <%
        if (request.getAttribute("error") != null) {
            out.println("<p id=\"error\" style=\"color:#ff0000\">" + request.getAttribute("error") + "</p>");
        }
    %>

    <button type="submit">Отправить</button>
    </form>
</div>

</body>
</html>
