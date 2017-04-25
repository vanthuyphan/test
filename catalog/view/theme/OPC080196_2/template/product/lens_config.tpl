<?php echo $header; ?>
<style>
    body {
        color: #000;
        font-family: "Dosis",sans-serif;
        font-size: 16px;
        font-weight: 500;
        letter-spacing: 0.6px;
        line-height: 24px;
        position: relative;
    }
    .container, .setup-content{
        padding-top: 100px;

    }
    
    .pd{
        font-size: 16px;
        font-weight: bold;
        text-align: center;
    }
    .nextBtn {
        padding-top: 15px;
        padding-bottom: 15px;
    }

    #pd, #pdl, #pdr {
        padding-top: 20px;
    }

    .form-container .select>select {
        background: #fff;
        margin: 0;
        border: 0;
        width: 100% !important;
        min-width: 135px;
        padding: 4px 8px 0 !important;
        color: #666;
        position: relative;
        text-shadow: 0 1px white;
        -webkit-appearance: none;
        -moz-appearance: none;
        text-indent: .01px;
        text-overflow: clip;
        vertical-align: top;
    }
    .form-container input, .form-container button, .form-container select, .form-container select optgroup, .form-container textarea {
        margin: 0;
        outline: 0;
        font-size: 1.2em;
        line-height: normal;
        font-style: normal;
        vertical-align: baseline;
    }
    .form-container *, .form-container ul li {
        padding: 0;
        list-style: none;
    }
    global.css:1
    .form-container * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        -ms-box-sizing: border-box;
        -o-box-sizing: border-box;
        box-sizing: border-box;
        text-decoration: none;
    }

    .setup-content div h1 {
        padding-bottom: 100px;
    }

    h1 {
        text-align: center;
        font-size: 30px;
        display: inherit;
    }

    .modal-header {
        padding: 15px;
        border-bottom: none;
        padding-bottom: 50px;
        min-height: 16.428571429px;
    }

    .stepwizard-step p {
        margin-top: 10px;
    }

    .stepwizard-row {
        display: table-row;
    }

    .stepwizard {
        display: table;
        width: 100%;
        position: relative;
    }

    .stepwizard-step button[disabled] {
        opacity: 1 !important;
        filter: alpha(opacity=100) !important;
    }

    .stepwizard-row:before {
        top: 14px;
        bottom: 0;
        position: absolute;
        content: " ";
        width: 100%;
        height: 1px;
        background-color: #ccc;
        z-order: 0;
    }

    .stepwizard-step {
        display: table-cell;
        text-align: center;
        position: relative;
    }

    .btn-circle {
        width: 30px;
        height: 30px;
        text-align: center;
        padding: 6px 0;
        font-size: 12px;
        line-height: 1.428571429;
        border-radius: 15px;
    }
    .btn-primary {
        background-color: #000000;
        color: #FFFFFF;
    }

    div.product-chooser {

    }

    div.clear {
        clear: both;
    }

    div.product-chooser.disabled div.product-chooser-item {
        zoom: 1;
        filter: alpha(opacity=60);
        opacity: 0.6;
        cursor: default;
    }

    div.product-chooser div.product-chooser-item {
        padding: 11px;
        border-radius: 6px;
        cursor: pointer;
        position: relative;
        border: 1px solid #efefef;
        margin-bottom: 10px;
        margin-left: 10px;
        margin-right: 10x;
    }

    div.product-chooser div.product-chooser-item.selected {
        border: 4px solid #428bca;
        background: #efefef;
        padding: 8px;
        filter: alpha(opacity=100);
        opacity: 1;
    }

    div.product-chooser div.product-chooser-item img {
        padding: 0;
    }

    div.product-chooser div.product-chooser-item span.title {
        display: block;
        margin: 10px 0 5px 0;
        font-weight: bold;
    }

    div.product-chooser div.product-chooser-item input {
        position: absolute;
        left: 0;
        top: 0;
    }
</style>
<div class="container">
    <div class="row">
        <div id="content">
            <div class="stepwizard">
                <div class="stepwizard-row setup-panel">
                    <div class="stepwizard-step">
                        <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                        <p>Type</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                        <p>Prescription</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                        <p>Lens</p>
                    </div>
                    <div class="stepwizard-step">
                        <a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                        <p>Options</p>
                    </div>
                </div>
            </div>

            <div class="row setup-content" id="step-1">
                <div class="col-md-12">
                    <h1>Choose Your Lens Type</h1>
                    <div class="row form-group product-chooser">
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <div id='single' class="product-chooser-item selected">
                                <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                    <span class="title">Single Version</span>
                                    <span class="description">A general use lens for seeing things close up or far away.</span>
                                    <p>
                                        <a data-toggle="collapse" data-target="#demo">Details...</a>
                                    <div id="demo" class="collapse">
                                        <ul>
                                            <li>Used by the majority of glasses wearers</li>
                                            <li>Only for nearsighted or farsighted vision</li>
                                            <li>Typically prescribed for children's lenses and people under forty</li>
                                        </ul>
                                    </div>
                                    </p>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <div id='bifocals' class="product-chooser-item">
                                <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                    <span class="title">Bifocals</span>
                                    <span class="description">Lens for near and far viewing with visible line.</span>
                                    <p>
                                        <a data-toggle="collapse" data-target="#demo2">Details...</a>
                                    <div id="demo2" class="collapse">
                                        <ul>
                                            <li>Visible line separates near and far distance viewing areas</li>
                                            <li>Bottom area is used for near vision (like reading)</li>
                                            <li>Top area is used for distance vision</li>
                                            <li>Typically prescribed for people over forty</li>
                                        </ul>
                                    </div>
                                    </p>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <div id='progressive' class="product-chooser-item">
                                <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                    <span class="title">Progressive No Line</span>
                                    <span class="description">Lens with smooth, continuous vision at near, middle and far.</span>
                                    <p>
                                        <a data-toggle="collapse" data-target="#demo3">Details...</a>
                                    <div id="demo3" class="collapse">
                                        <ul>
                                            <li>Offers smooth transition between distance, intermediate, and near
                                                vision
                                            </li>
                                            <li>No visible line</li>
                                            <li>Eases eye strain</li>
                                            <li>Typically prescribed for people over forty</li>
                                            <li>Highly recommended over Bifocals with lines</li>
                                        </ul>
                                    </div>
                                    </p>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
                </div>
            </div>
            <div class="row setup-content" id="step-2">
                <div class="col-md-12">
                    <h1>Do You Have Your Prescription Available?</h1>
                    <div class="row form-group product-chooser">
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <div class="product-chooser-item selected">
                                <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                    <span class="title">I'll send it later</span>
                                    <span class="description">Don't worry, we'll get your prescription after the order is placed.</span>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <div class="product-chooser-item">
                                <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                    <span class="title">You already have it</span>
                                    <span class="description">If you're a returning customer, we will check your previous order(s) for your prescription.</span>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <div id='enter_now' class="product-chooser-item">
                                <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                    <span class="title">Yes</span>
                                    <span class="description">I would like to enter it now.</span>
                                </div>

                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
                    <form id ='lens-form' class="form-horizontal">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-highlight">
                                <thead>
                                <th></th>
                                <th>Sphere</th>
                                <th>Cylinder</th>
                                <th>Axis</th>
                                <th>Add</th>
                                </thead>
                                <tbody>
                                <tr>
                                    <td >Right (OD):</td>
                                    <td><select class="form-control">
                                            <option value="142">+15.00</option>
                                            <option value="141">+14.75</option>
                                            <option value="140">+14.50</option>
                                            <option value="139">+14.25</option>
                                            <option value="138">+14.00</option>
                                            <option value="137">+13.75</option>
                                            <option value="136">+13.50</option>
                                            <option value="135">+13.25</option>
                                            <option value="134">+13.00</option>
                                            <option value="133">+12.75</option>
                                            <option value="132">+12.50</option>
                                            <option value="131">+12.25</option>
                                            <option value="130">+12.00</option>
                                            <option value="129">+11.75</option>
                                            <option value="128">+11.50</option>
                                            <option value="127">+11.25</option>
                                            <option value="126">+11.00</option>
                                            <option value="125">+10.75</option>
                                            <option value="124">+10.50</option>
                                            <option value="123">+10.25</option>
                                            <option value="122">+10.00</option>
                                            <option value="121">+9.75</option>
                                            <option value="120">+9.50</option>
                                            <option value="119">+9.25</option>
                                            <option value="118">+9.00</option>
                                            <option value="117">+8.75</option>
                                            <option value="116">+8.50</option>
                                            <option value="115">+8.25</option>
                                            <option value="114">+8.00</option>
                                            <option value="113">+7.75</option>
                                            <option value="112">+7.50</option>
                                            <option value="111">+7.25</option>
                                            <option value="110">+7.00</option>
                                            <option value="109">+6.75</option>
                                            <option value="108">+6.50</option>
                                            <option value="107">+6.25</option>
                                            <option value="106">+6.00</option>
                                            <option value="105">+5.75</option>
                                            <option value="104">+5.50</option>
                                            <option value="103">+5.25</option>
                                            <option value="102">+5.00</option>
                                            <option value="101">+4.75</option>
                                            <option value="100">+4.50</option>
                                            <option value="99">+4.25</option>
                                            <option value="98">+4.00</option>
                                            <option value="97">+3.75</option>
                                            <option value="96">+3.50</option>
                                            <option value="95">+3.25</option>
                                            <option value="94">+3.00</option>
                                            <option value="93">+2.75</option>
                                            <option value="92">+2.50</option>
                                            <option value="91">+2.25</option>
                                            <option value="90">+2.00</option>
                                            <option value="89">+1.75</option>
                                            <option value="88">+1.50</option>
                                            <option value="87">+1.25</option>
                                            <option value="86">+1.00</option>
                                            <option value="85">+0.75</option>
                                            <option value="84">+0.50</option>
                                            <option value="83">+0.25</option>
                                            <option value="165"></option>
                                            <option value="163"></option>
                                            <option value="164">0.00</option>
                                            <option value="2">Plano</option>
                                            <option value="0">Sphere</option>
                                            <option value="1">None</option>
                                            <option value="165"></option>
                                            <option value="3">-0.25</option>
                                            <option value="4">-0.50</option>
                                            <option value="5">-0.75</option>
                                            <option value="6">-1.00</option>
                                            <option value="7">-1.25</option>
                                            <option value="8">-1.50</option>
                                            <option value="9">-1.75</option>
                                            <option value="10">-2.00</option>
                                            <option value="11">-2.25</option>
                                            <option value="12">-2.50</option>
                                            <option value="13">-2.75</option>
                                            <option value="14">-3.00</option>
                                            <option value="15">-3.25</option>
                                            <option value="16">-3.50</option>
                                            <option value="17">-3.75</option>
                                            <option value="18">-4.00</option>
                                            <option value="19">-4.25</option>
                                            <option value="20">-4.50</option>
                                            <option value="21">-4.75</option>
                                            <option value="22">-5.00</option>
                                            <option value="23">-5.25</option>
                                            <option value="24">-5.50</option>
                                            <option value="25">-5.75</option>
                                            <option value="26">-6.00</option>
                                            <option value="27">-6.25</option>
                                            <option value="28">-6.50</option>
                                            <option value="29">-6.75</option>
                                            <option value="30">-7.00</option>
                                            <option value="31">-7.25</option>
                                            <option value="32">-7.50</option>
                                            <option value="33">-7.75</option>
                                            <option value="34">-8.00</option>
                                            <option value="35">-8.25</option>
                                            <option value="36">-8.50</option>
                                            <option value="37">-8.75</option>
                                            <option value="38">-9.00</option>
                                            <option value="39">-9.25</option>
                                            <option value="40">-9.50</option>
                                            <option value="41">-9.75</option>
                                            <option value="42">-10.00</option>
                                            <option value="43">-10.25</option>
                                            <option value="44">-10.50</option>
                                            <option value="45">-10.75</option>
                                            <option value="46">-11.00</option>
                                            <option value="47">-11.25</option>
                                            <option value="48">-11.50</option>
                                            <option value="49">-11.75</option>
                                            <option value="50">-12.00</option>
                                            <option value="51">-12.25</option>
                                            <option value="52">-12.50</option>
                                            <option value="53">-12.75</option>
                                            <option value="54">-13.00</option>
                                            <option value="55">-13.25</option>
                                            <option value="56">-13.50</option>
                                            <option value="57">-13.75</option>
                                            <option value="58">-14.00</option>
                                            <option value="59">-14.25</option>
                                            <option value="60">-14.50</option>
                                            <option value="61">-14.75</option>
                                            <option value="62">-15.00</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control">
                                            <option selected="selected" value="66">+8.00</option>
                                            <option value="65">+7.75</option>
                                            <option value="64">+7.50</option>
                                            <option value="63">+7.25</option>
                                            <option value="62">+7.00</option>
                                            <option value="61">+6.75</option>
                                            <option value="60">+6.50</option>
                                            <option value="59">+6.25</option>
                                            <option value="58">+6.00</option>
                                            <option value="57">+5.75</option>
                                            <option value="56">+5.50</option>
                                            <option value="55">+5.25</option>
                                            <option value="54">+5.00</option>
                                            <option value="53">+4.75</option>
                                            <option value="52">+4.50</option>
                                            <option value="51">+4.25</option>
                                            <option value="50">+4.00</option>
                                            <option value="49">+3.75</option>
                                            <option value="47">+3.50</option>
                                            <option value="46">+3.25</option>
                                            <option value="45">+3.00</option>
                                            <option value="44">+2.75</option>
                                            <option value="43">+2.50</option>
                                            <option value="42">+2.25</option>
                                            <option value="41">+2.00</option>
                                            <option value="40">+1.75</option>
                                            <option value="39">+1.50</option>
                                            <option value="38">+1.25</option>
                                            <option value="37">+1.00</option>
                                            <option value="36">+0.75</option>
                                            <option value="35">+0.50</option>
                                            <option value="34">+0.25</option>
                                            <option value="166"></option>
                                            <option value="164"></option>
                                            <option value="165">0.00</option>
                                            <option value="67">Plano</option>
                                            <option value="0">Cylinder</option>
                                            <option value="1">None</option>
                                            <option value="166"></option>
                                            <option value="2">-0.25</option>
                                            <option value="3">-0.50</option>
                                            <option value="4">-0.75</option>
                                            <option value="5">-1.00</option>
                                            <option value="6">-1.25</option>
                                            <option value="7">-1.50</option>
                                            <option value="8">-1.75</option>
                                            <option value="9">-2.00</option>
                                            <option value="10">-2.25</option>
                                            <option value="11">-2.50</option>
                                            <option value="12">-2.75</option>
                                            <option value="13">-3.00</option>
                                            <option value="14">-3.25</option>
                                            <option value="15">-3.50</option>
                                            <option value="16">-3.75</option>
                                            <option value="17">-4.00</option>
                                            <option value="18">-4.25</option>
                                            <option value="19">-4.50</option>
                                            <option value="20">-4.75</option>
                                            <option value="21">-5.00</option>
                                            <option value="22">-5.25</option>
                                            <option value="23">-5.50</option>
                                            <option value="24">-5.75</option>
                                            <option value="25">-6.00</option>
                                            <option value="26">-6.25</option>
                                            <option value="27">-6.50</option>
                                            <option value="28">-6.75</option>
                                            <option value="29">-7.00</option>
                                            <option value="30">-7.25</option>
                                            <option value="31">-7.50</option>
                                            <option value="32">-7.75</option>
                                            <option value="33">-8.00</option>

                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control">
                                            <option selected="selected" value="183"></option>
                                            <option value="0">Axis</option>
                                            <option value="1">None</option>
                                            <option value="184" disabled="true">------</option>
                                            <option value="284">000</option>
                                            <option value="185">001</option>
                                            <option value="186">002</option>
                                            <option value="187">003</option>
                                            <option value="188">004</option>
                                            <option value="189">005</option>
                                            <option value="190">006</option>
                                            <option value="191">007</option>
                                            <option value="192">008</option>
                                            <option value="193">009</option>
                                            <option value="194">010</option>
                                            <option value="195">011</option>
                                            <option value="196">012</option>
                                            <option value="197">013</option>
                                            <option value="198">014</option>
                                            <option value="199">015</option>
                                            <option value="200">016</option>
                                            <option value="201">017</option>
                                            <option value="202">018</option>
                                            <option value="203">019</option>
                                            <option value="204">020</option>
                                            <option value="205">021</option>
                                            <option value="206">022</option>
                                            <option value="207">023</option>
                                            <option value="208">024</option>
                                            <option value="209">025</option>
                                            <option value="210">026</option>
                                            <option value="211">027</option>
                                            <option value="212">028</option>
                                            <option value="213">029</option>
                                            <option value="214">030</option>
                                            <option value="215">031</option>
                                            <option value="216">032</option>
                                            <option value="217">033</option>
                                            <option value="218">034</option>
                                            <option value="219">035</option>
                                            <option value="220">036</option>
                                            <option value="221">037</option>
                                            <option value="222">038</option>
                                            <option value="223">039</option>
                                            <option value="224">040</option>
                                            <option value="225">041</option>
                                            <option value="226">042</option>
                                            <option value="227">043</option>
                                            <option value="228">044</option>
                                            <option value="229">045</option>
                                            <option value="230">046</option>
                                            <option value="231">047</option>
                                            <option value="232">048</option>
                                            <option value="233">049</option>
                                            <option value="234">050</option>
                                            <option value="235">051</option>
                                            <option value="236">052</option>
                                            <option value="237">053</option>
                                            <option value="238">054</option>
                                            <option value="239">055</option>
                                            <option value="240">056</option>
                                            <option value="241">057</option>
                                            <option value="242">058</option>
                                            <option value="243">059</option>
                                            <option value="244">060</option>
                                            <option value="245">061</option>
                                            <option value="246">062</option>
                                            <option value="247">063</option>
                                            <option value="248">064</option>
                                            <option value="249">065</option>
                                            <option value="250">066</option>
                                            <option value="251">067</option>
                                            <option value="252">068</option>
                                            <option value="253">069</option>
                                            <option value="254">070</option>
                                            <option value="255">071</option>
                                            <option value="256">072</option>
                                            <option value="257">073</option>
                                            <option value="258">074</option>
                                            <option value="259">075</option>
                                            <option value="260">076</option>
                                            <option value="261">077</option>
                                            <option value="262">078</option>
                                            <option value="263">079</option>
                                            <option value="264">080</option>
                                            <option value="265">081</option>
                                            <option value="266">082</option>
                                            <option value="267">083</option>
                                            <option value="268">084</option>
                                            <option value="269">085</option>
                                            <option value="270">086</option>
                                            <option value="271">087</option>
                                            <option value="272">088</option>
                                            <option value="273">089</option>
                                            <option value="274">090</option>
                                            <option value="275">091</option>
                                            <option value="276">092</option>
                                            <option value="277">093</option>
                                            <option value="278">094</option>
                                            <option value="279">095</option>
                                            <option value="280">096</option>
                                            <option value="281">097</option>
                                            <option value="282">098</option>
                                            <option value="283">099</option>
                                            <option value="102">100</option>
                                            <option value="103">101</option>
                                            <option value="104">102</option>
                                            <option value="105">103</option>
                                            <option value="106">104</option>
                                            <option value="107">105</option>
                                            <option value="108">106</option>
                                            <option value="109">107</option>
                                            <option value="110">108</option>
                                            <option value="111">109</option>
                                            <option value="112">110</option>
                                            <option value="113">111</option>
                                            <option value="114">112</option>
                                            <option value="115">113</option>
                                            <option value="116">114</option>
                                            <option value="117">115</option>
                                            <option value="118">116</option>
                                            <option value="119">117</option>
                                            <option value="120">118</option>
                                            <option value="121">119</option>
                                            <option value="122">120</option>
                                            <option value="123">121</option>
                                            <option value="124">122</option>
                                            <option value="125">123</option>
                                            <option value="126">124</option>
                                            <option value="127">125</option>
                                            <option value="128">126</option>
                                            <option value="129">127</option>
                                            <option value="130">128</option>
                                            <option value="131">129</option>
                                            <option value="132">130</option>
                                            <option value="133">131</option>
                                            <option value="134">132</option>
                                            <option value="135">133</option>
                                            <option value="136">134</option>
                                            <option value="137">135</option>
                                            <option value="138">136</option>
                                            <option value="139">137</option>
                                            <option value="140">138</option>
                                            <option value="141">139</option>
                                            <option value="142">140</option>
                                            <option value="143">141</option>
                                            <option value="144">142</option>
                                            <option value="145">143</option>
                                            <option value="146">144</option>
                                            <option value="147">145</option>
                                            <option value="148">146</option>
                                            <option value="149">147</option>
                                            <option value="150">148</option>
                                            <option value="151">149</option>
                                            <option value="152">150</option>
                                            <option value="153">151</option>
                                            <option value="154">152</option>
                                            <option value="155">153</option>
                                            <option value="156">154</option>
                                            <option value="157">155</option>
                                            <option value="158">156</option>
                                            <option value="159">157</option>
                                            <option value="160">158</option>
                                            <option value="161">159</option>
                                            <option value="162">160</option>
                                            <option value="163">161</option>
                                            <option value="164">162</option>
                                            <option value="165">163</option>
                                            <option value="166">164</option>
                                            <option value="167">165</option>
                                            <option value="168">166</option>
                                            <option value="169">167</option>
                                            <option value="170">168</option>
                                            <option value="171">169</option>
                                            <option value="172">170</option>
                                            <option value="173">171</option>
                                            <option value="174">172</option>
                                            <option value="175">173</option>
                                            <option value="176">174</option>
                                            <option value="177">175</option>
                                            <option value="178">176</option>
                                            <option value="179">177</option>
                                            <option value="180">178</option>
                                            <option value="181">179</option>
                                            <option value="182">180</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control">
                                            <option selected="selected" value="0">Add</option>
                                            <option value="1">None</option>
                                            <option value="2">+0.75</option>
                                            <option value="3">+1.00</option>
                                            <option value="4">+1.25</option>
                                            <option value="5">+1.50</option>
                                            <option value="6">+1.75</option>
                                            <option value="7">+2.00</option>
                                            <option value="8">+2.25</option>
                                            <option value="9">+2.50</option>
                                            <option value="10">+2.75</option>
                                            <option value="11">+3.00</option>
                                            <option value="12">+3.25</option>
                                            <option value="14">+3.50</option>
                                            <option value="15">+3.75</option>
                                            <option value="16">+4.00</option>

                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td >Left (OD):</td>
                                    <td><select class="form-control">
                                            <option value="142">+15.00</option>
                                            <option value="141">+14.75</option>
                                            <option value="140">+14.50</option>
                                            <option value="139">+14.25</option>
                                            <option value="138">+14.00</option>
                                            <option value="137">+13.75</option>
                                            <option value="136">+13.50</option>
                                            <option value="135">+13.25</option>
                                            <option value="134">+13.00</option>
                                            <option value="133">+12.75</option>
                                            <option value="132">+12.50</option>
                                            <option value="131">+12.25</option>
                                            <option value="130">+12.00</option>
                                            <option value="129">+11.75</option>
                                            <option value="128">+11.50</option>
                                            <option value="127">+11.25</option>
                                            <option value="126">+11.00</option>
                                            <option value="125">+10.75</option>
                                            <option value="124">+10.50</option>
                                            <option value="123">+10.25</option>
                                            <option value="122">+10.00</option>
                                            <option value="121">+9.75</option>
                                            <option value="120">+9.50</option>
                                            <option value="119">+9.25</option>
                                            <option value="118">+9.00</option>
                                            <option value="117">+8.75</option>
                                            <option value="116">+8.50</option>
                                            <option value="115">+8.25</option>
                                            <option value="114">+8.00</option>
                                            <option value="113">+7.75</option>
                                            <option value="112">+7.50</option>
                                            <option value="111">+7.25</option>
                                            <option value="110">+7.00</option>
                                            <option value="109">+6.75</option>
                                            <option value="108">+6.50</option>
                                            <option value="107">+6.25</option>
                                            <option value="106">+6.00</option>
                                            <option value="105">+5.75</option>
                                            <option value="104">+5.50</option>
                                            <option value="103">+5.25</option>
                                            <option value="102">+5.00</option>
                                            <option value="101">+4.75</option>
                                            <option value="100">+4.50</option>
                                            <option value="99">+4.25</option>
                                            <option value="98">+4.00</option>
                                            <option value="97">+3.75</option>
                                            <option value="96">+3.50</option>
                                            <option value="95">+3.25</option>
                                            <option value="94">+3.00</option>
                                            <option value="93">+2.75</option>
                                            <option value="92">+2.50</option>
                                            <option value="91">+2.25</option>
                                            <option value="90">+2.00</option>
                                            <option value="89">+1.75</option>
                                            <option value="88">+1.50</option>
                                            <option value="87">+1.25</option>
                                            <option value="86">+1.00</option>
                                            <option value="85">+0.75</option>
                                            <option value="84">+0.50</option>
                                            <option value="83">+0.25</option>
                                            <option value="165"></option>
                                            <option value="163"></option>
                                            <option value="164">0.00</option>
                                            <option value="2">Plano</option>
                                            <option value="0">Sphere</option>
                                            <option value="1">None</option>
                                            <option value="165"></option>
                                            <option value="3">-0.25</option>
                                            <option value="4">-0.50</option>
                                            <option value="5">-0.75</option>
                                            <option value="6">-1.00</option>
                                            <option value="7">-1.25</option>
                                            <option value="8">-1.50</option>
                                            <option value="9">-1.75</option>
                                            <option value="10">-2.00</option>
                                            <option value="11">-2.25</option>
                                            <option value="12">-2.50</option>
                                            <option value="13">-2.75</option>
                                            <option value="14">-3.00</option>
                                            <option value="15">-3.25</option>
                                            <option value="16">-3.50</option>
                                            <option value="17">-3.75</option>
                                            <option value="18">-4.00</option>
                                            <option value="19">-4.25</option>
                                            <option value="20">-4.50</option>
                                            <option value="21">-4.75</option>
                                            <option value="22">-5.00</option>
                                            <option value="23">-5.25</option>
                                            <option value="24">-5.50</option>
                                            <option value="25">-5.75</option>
                                            <option value="26">-6.00</option>
                                            <option value="27">-6.25</option>
                                            <option value="28">-6.50</option>
                                            <option value="29">-6.75</option>
                                            <option value="30">-7.00</option>
                                            <option value="31">-7.25</option>
                                            <option value="32">-7.50</option>
                                            <option value="33">-7.75</option>
                                            <option value="34">-8.00</option>
                                            <option value="35">-8.25</option>
                                            <option value="36">-8.50</option>
                                            <option value="37">-8.75</option>
                                            <option value="38">-9.00</option>
                                            <option value="39">-9.25</option>
                                            <option value="40">-9.50</option>
                                            <option value="41">-9.75</option>
                                            <option value="42">-10.00</option>
                                            <option value="43">-10.25</option>
                                            <option value="44">-10.50</option>
                                            <option value="45">-10.75</option>
                                            <option value="46">-11.00</option>
                                            <option value="47">-11.25</option>
                                            <option value="48">-11.50</option>
                                            <option value="49">-11.75</option>
                                            <option value="50">-12.00</option>
                                            <option value="51">-12.25</option>
                                            <option value="52">-12.50</option>
                                            <option value="53">-12.75</option>
                                            <option value="54">-13.00</option>
                                            <option value="55">-13.25</option>
                                            <option value="56">-13.50</option>
                                            <option value="57">-13.75</option>
                                            <option value="58">-14.00</option>
                                            <option value="59">-14.25</option>
                                            <option value="60">-14.50</option>
                                            <option value="61">-14.75</option>
                                            <option value="62">-15.00</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control">
                                            <option selected="selected" value="66">+8.00</option>
                                            <option value="65">+7.75</option>
                                            <option value="64">+7.50</option>
                                            <option value="63">+7.25</option>
                                            <option value="62">+7.00</option>
                                            <option value="61">+6.75</option>
                                            <option value="60">+6.50</option>
                                            <option value="59">+6.25</option>
                                            <option value="58">+6.00</option>
                                            <option value="57">+5.75</option>
                                            <option value="56">+5.50</option>
                                            <option value="55">+5.25</option>
                                            <option value="54">+5.00</option>
                                            <option value="53">+4.75</option>
                                            <option value="52">+4.50</option>
                                            <option value="51">+4.25</option>
                                            <option value="50">+4.00</option>
                                            <option value="49">+3.75</option>
                                            <option value="47">+3.50</option>
                                            <option value="46">+3.25</option>
                                            <option value="45">+3.00</option>
                                            <option value="44">+2.75</option>
                                            <option value="43">+2.50</option>
                                            <option value="42">+2.25</option>
                                            <option value="41">+2.00</option>
                                            <option value="40">+1.75</option>
                                            <option value="39">+1.50</option>
                                            <option value="38">+1.25</option>
                                            <option value="37">+1.00</option>
                                            <option value="36">+0.75</option>
                                            <option value="35">+0.50</option>
                                            <option value="34">+0.25</option>
                                            <option value="166"></option>
                                            <option value="164"></option>
                                            <option value="165">0.00</option>
                                            <option value="67">Plano</option>
                                            <option value="0">Cylinder</option>
                                            <option value="1">None</option>
                                            <option value="166"></option>
                                            <option value="2">-0.25</option>
                                            <option value="3">-0.50</option>
                                            <option value="4">-0.75</option>
                                            <option value="5">-1.00</option>
                                            <option value="6">-1.25</option>
                                            <option value="7">-1.50</option>
                                            <option value="8">-1.75</option>
                                            <option value="9">-2.00</option>
                                            <option value="10">-2.25</option>
                                            <option value="11">-2.50</option>
                                            <option value="12">-2.75</option>
                                            <option value="13">-3.00</option>
                                            <option value="14">-3.25</option>
                                            <option value="15">-3.50</option>
                                            <option value="16">-3.75</option>
                                            <option value="17">-4.00</option>
                                            <option value="18">-4.25</option>
                                            <option value="19">-4.50</option>
                                            <option value="20">-4.75</option>
                                            <option value="21">-5.00</option>
                                            <option value="22">-5.25</option>
                                            <option value="23">-5.50</option>
                                            <option value="24">-5.75</option>
                                            <option value="25">-6.00</option>
                                            <option value="26">-6.25</option>
                                            <option value="27">-6.50</option>
                                            <option value="28">-6.75</option>
                                            <option value="29">-7.00</option>
                                            <option value="30">-7.25</option>
                                            <option value="31">-7.50</option>
                                            <option value="32">-7.75</option>
                                            <option value="33">-8.00</option>

                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control">
                                            <option selected="selected" value="183"></option>
                                            <option value="0">Axis</option>
                                            <option value="1">None</option>
                                            <option value="184" disabled="true">------</option>
                                            <option value="284">000</option>
                                            <option value="185">001</option>
                                            <option value="186">002</option>
                                            <option value="187">003</option>
                                            <option value="188">004</option>
                                            <option value="189">005</option>
                                            <option value="190">006</option>
                                            <option value="191">007</option>
                                            <option value="192">008</option>
                                            <option value="193">009</option>
                                            <option value="194">010</option>
                                            <option value="195">011</option>
                                            <option value="196">012</option>
                                            <option value="197">013</option>
                                            <option value="198">014</option>
                                            <option value="199">015</option>
                                            <option value="200">016</option>
                                            <option value="201">017</option>
                                            <option value="202">018</option>
                                            <option value="203">019</option>
                                            <option value="204">020</option>
                                            <option value="205">021</option>
                                            <option value="206">022</option>
                                            <option value="207">023</option>
                                            <option value="208">024</option>
                                            <option value="209">025</option>
                                            <option value="210">026</option>
                                            <option value="211">027</option>
                                            <option value="212">028</option>
                                            <option value="213">029</option>
                                            <option value="214">030</option>
                                            <option value="215">031</option>
                                            <option value="216">032</option>
                                            <option value="217">033</option>
                                            <option value="218">034</option>
                                            <option value="219">035</option>
                                            <option value="220">036</option>
                                            <option value="221">037</option>
                                            <option value="222">038</option>
                                            <option value="223">039</option>
                                            <option value="224">040</option>
                                            <option value="225">041</option>
                                            <option value="226">042</option>
                                            <option value="227">043</option>
                                            <option value="228">044</option>
                                            <option value="229">045</option>
                                            <option value="230">046</option>
                                            <option value="231">047</option>
                                            <option value="232">048</option>
                                            <option value="233">049</option>
                                            <option value="234">050</option>
                                            <option value="235">051</option>
                                            <option value="236">052</option>
                                            <option value="237">053</option>
                                            <option value="238">054</option>
                                            <option value="239">055</option>
                                            <option value="240">056</option>
                                            <option value="241">057</option>
                                            <option value="242">058</option>
                                            <option value="243">059</option>
                                            <option value="244">060</option>
                                            <option value="245">061</option>
                                            <option value="246">062</option>
                                            <option value="247">063</option>
                                            <option value="248">064</option>
                                            <option value="249">065</option>
                                            <option value="250">066</option>
                                            <option value="251">067</option>
                                            <option value="252">068</option>
                                            <option value="253">069</option>
                                            <option value="254">070</option>
                                            <option value="255">071</option>
                                            <option value="256">072</option>
                                            <option value="257">073</option>
                                            <option value="258">074</option>
                                            <option value="259">075</option>
                                            <option value="260">076</option>
                                            <option value="261">077</option>
                                            <option value="262">078</option>
                                            <option value="263">079</option>
                                            <option value="264">080</option>
                                            <option value="265">081</option>
                                            <option value="266">082</option>
                                            <option value="267">083</option>
                                            <option value="268">084</option>
                                            <option value="269">085</option>
                                            <option value="270">086</option>
                                            <option value="271">087</option>
                                            <option value="272">088</option>
                                            <option value="273">089</option>
                                            <option value="274">090</option>
                                            <option value="275">091</option>
                                            <option value="276">092</option>
                                            <option value="277">093</option>
                                            <option value="278">094</option>
                                            <option value="279">095</option>
                                            <option value="280">096</option>
                                            <option value="281">097</option>
                                            <option value="282">098</option>
                                            <option value="283">099</option>
                                            <option value="102">100</option>
                                            <option value="103">101</option>
                                            <option value="104">102</option>
                                            <option value="105">103</option>
                                            <option value="106">104</option>
                                            <option value="107">105</option>
                                            <option value="108">106</option>
                                            <option value="109">107</option>
                                            <option value="110">108</option>
                                            <option value="111">109</option>
                                            <option value="112">110</option>
                                            <option value="113">111</option>
                                            <option value="114">112</option>
                                            <option value="115">113</option>
                                            <option value="116">114</option>
                                            <option value="117">115</option>
                                            <option value="118">116</option>
                                            <option value="119">117</option>
                                            <option value="120">118</option>
                                            <option value="121">119</option>
                                            <option value="122">120</option>
                                            <option value="123">121</option>
                                            <option value="124">122</option>
                                            <option value="125">123</option>
                                            <option value="126">124</option>
                                            <option value="127">125</option>
                                            <option value="128">126</option>
                                            <option value="129">127</option>
                                            <option value="130">128</option>
                                            <option value="131">129</option>
                                            <option value="132">130</option>
                                            <option value="133">131</option>
                                            <option value="134">132</option>
                                            <option value="135">133</option>
                                            <option value="136">134</option>
                                            <option value="137">135</option>
                                            <option value="138">136</option>
                                            <option value="139">137</option>
                                            <option value="140">138</option>
                                            <option value="141">139</option>
                                            <option value="142">140</option>
                                            <option value="143">141</option>
                                            <option value="144">142</option>
                                            <option value="145">143</option>
                                            <option value="146">144</option>
                                            <option value="147">145</option>
                                            <option value="148">146</option>
                                            <option value="149">147</option>
                                            <option value="150">148</option>
                                            <option value="151">149</option>
                                            <option value="152">150</option>
                                            <option value="153">151</option>
                                            <option value="154">152</option>
                                            <option value="155">153</option>
                                            <option value="156">154</option>
                                            <option value="157">155</option>
                                            <option value="158">156</option>
                                            <option value="159">157</option>
                                            <option value="160">158</option>
                                            <option value="161">159</option>
                                            <option value="162">160</option>
                                            <option value="163">161</option>
                                            <option value="164">162</option>
                                            <option value="165">163</option>
                                            <option value="166">164</option>
                                            <option value="167">165</option>
                                            <option value="168">166</option>
                                            <option value="169">167</option>
                                            <option value="170">168</option>
                                            <option value="171">169</option>
                                            <option value="172">170</option>
                                            <option value="173">171</option>
                                            <option value="174">172</option>
                                            <option value="175">173</option>
                                            <option value="176">174</option>
                                            <option value="177">175</option>
                                            <option value="178">176</option>
                                            <option value="179">177</option>
                                            <option value="180">178</option>
                                            <option value="181">179</option>
                                            <option value="182">180</option>
                                        </select>
                                    </td>
                                    <td>
                                        <select class="form-control">
                                            <option selected="selected" value="0">Add</option>
                                            <option value="1">None</option>
                                            <option value="2">+0.75</option>
                                            <option value="3">+1.00</option>
                                            <option value="4">+1.25</option>
                                            <option value="5">+1.50</option>
                                            <option value="6">+1.75</option>
                                            <option value="7">+2.00</option>
                                            <option value="8">+2.25</option>
                                            <option value="9">+2.50</option>
                                            <option value="10">+2.75</option>
                                            <option value="11">+3.00</option>
                                            <option value="12">+3.25</option>
                                            <option value="14">+3.50</option>
                                            <option value="15">+3.75</option>
                                            <option value="16">+4.00</option>

                                        </select>
                                    </td>
                                </tr>

                                </tr>
                                <tr>

                                </tbody>
                            </table>
                            <div id=""">
                            <p class="pd">How many PD (Pupillary Distance) numbers do you see on your prescription?</p>
                            <form>
                                <div class="row">
                                    <label class="radio-inline col-md-1 col-md-offset-5">
                                        <input type="radio" value="one" name="optradio" checked>One
                                    </label>
                                    <label class="radio-inline col-md-1 col-md-offset-5">
                                        <input type="radio"  value='two' name="optradio" >Two
                                    </label>
                                </div>

                                <div id='pd' class="col-md-1 col-md-offset-5">
                                    <select class="form-control">
                                        <option selected="selected" value="0">PD</option>
                                        <option value="1">None</option>
                                        <option value="73">20.0</option>
                                        <option value="74">20.5</option>
                                        <option value="75">21.0</option>
                                        <option value="76">21.5</option>
                                        <option value="77">22.0</option>
                                        <option value="78">22.5</option>
                                        <option value="79">23.0</option>
                                        <option value="90">23.5</option>
                                        <option value="91">24.0</option>
                                        <option value="92">24.5</option>
                                        <option value="93">25.0</option>
                                        <option value="94">25.5</option>
                                        <option value="95">26.0</option>
                                        <option value="96">26.5</option>
                                        <option value="97">27.0</option>
                                        <option value="98">27.5</option>
                                        <option value="99">28.0</option>
                                        <option value="100">28.5</option>
                                        <option value="101">29.0</option>
                                        <option value="102">29.5</option>
                                        <option value="103">30.0</option>
                                        <option value="104">30.5</option>
                                        <option value="105">31.0</option>
                                        <option value="106">31.5</option>
                                        <option value="107">32.0</option>
                                        <option value="108">32.5</option>
                                        <option value="109">33.0</option>
                                        <option value="110">33.5</option>
                                        <option value="111">34.0</option>
                                        <option value="112">34.5</option>
                                        <option value="113">35.0</option>
                                        <option value="114">35.5</option>
                                        <option value="115">36.0</option>
                                        <option value="116">36.5</option>
                                        <option value="117">37.0</option>
                                        <option value="118">37.5</option>
                                        <option value="119">38.0</option>
                                        <option value="120">38.5</option>
                                        <option value="121">39.0</option>
                                        <option value="122">39.5</option>
                                        <option value="123">40.0</option>
                                        <option value="124">40.5</option>
                                        <option value="125">41.0</option>
                                        <option value="126">41.5</option>
                                        <option value="127">42.0</option>
                                        <option value="128">42.5</option>
                                        <option value="129">43.0</option>
                                        <option value="130">43.5</option>
                                        <option value="131">44.0</option>
                                        <option value="132">44.5</option>
                                        <option value="133">45.0</option>
                                        <option value="134">45.5</option>
                                        <option value="135">46.0</option>
                                        <option value="136">46.5</option>
                                        <option value="137">47.0</option>
                                        <option value="138">47.5</option>
                                        <option value="139">48.0</option>
                                        <option value="140">48.5</option>
                                        <option value="141">49.0</option>
                                        <option value="142">49.5</option>
                                        <option value="53">50.0</option>
                                        <option value="54">50.5</option>
                                        <option value="55">51.0</option>
                                        <option value="56">51.5</option>
                                        <option value="57">52.0</option>
                                        <option value="58">52.5</option>
                                        <option value="59">53.0</option>
                                        <option value="60">53.5</option>
                                        <option value="61">54.0</option>
                                        <option value="62">54.5</option>
                                        <option value="63">55.0</option>
                                        <option value="64">55.5</option>
                                        <option value="65">56.0</option>
                                        <option value="66">56.5</option>
                                        <option value="67">57.0</option>
                                        <option value="68">57.5</option>
                                        <option value="69">58.0</option>
                                        <option value="70">58.5</option>
                                        <option value="71">59.0</option>
                                        <option value="72">59.5</option>
                                        <option value="2">60.0</option>
                                        <option value="3">60.5</option>
                                        <option value="4">61.0</option>
                                        <option value="5">61.5</option>
                                        <option value="6">62.0</option>
                                        <option value="7">62.5</option>
                                        <option value="8">63.0</option>
                                        <option value="9">63.5</option>
                                        <option value="10">64.0</option>
                                        <option value="11">64.5</option>
                                        <option value="12">65.0</option>
                                        <option value="13">65.5</option>
                                        <option value="14">66.0</option>
                                        <option value="15">66.5</option>
                                        <option value="16">67.0</option>
                                        <option value="17">67.5</option>
                                        <option value="18">68.0</option>
                                        <option value="19">68.5</option>
                                        <option value="20">69.0</option>
                                        <option value="21">69.5</option>
                                        <option value="22">70.0</option>
                                        <option value="23">70.5</option>
                                        <option value="24">71.0</option>
                                        <option value="25">71.5</option>
                                        <option value="26">72.0</option>
                                        <option value="27">72.5</option>
                                        <option value="28">73.0</option>
                                        <option value="29">73.5</option>
                                        <option value="30">74.0</option>
                                        <option value="31">74.5</option>
                                        <option value="32">75.0</option>
                                        <option value="33">75.5</option>
                                        <option value="34">76.0</option>
                                        <option value="35">76.5</option>
                                        <option value="36">77.0</option>
                                        <option value="37">77.5</option>
                                        <option value="38">78.0</option>
                                        <option value="143">78.5</option>
                                        <option value="40">79.0</option>
                                        <option value="41">79.5</option>
                                        <option value="42">80.0</option>

                                    </select>
                                </div>
                                <div  id='pdl' class="col-md-1 col-md-offset-5">
                                    <select class="form-control">
                                        <option selected="selected" value="0">PD L</option>
                                        <option value="1">None</option>
                                        <option value="73">20.0</option>
                                        <option value="74">20.5</option>
                                        <option value="75">21.0</option>
                                        <option value="76">21.5</option>
                                        <option value="77">22.0</option>
                                        <option value="78">22.5</option>
                                        <option value="79">23.0</option>
                                        <option value="90">23.5</option>
                                        <option value="91">24.0</option>
                                        <option value="92">24.5</option>
                                        <option value="93">25.0</option>
                                        <option value="94">25.5</option>
                                        <option value="95">26.0</option>
                                        <option value="96">26.5</option>
                                        <option value="97">27.0</option>
                                        <option value="98">27.5</option>
                                        <option value="99">28.0</option>
                                        <option value="100">28.5</option>
                                        <option value="101">29.0</option>
                                        <option value="102">29.5</option>
                                        <option value="103">30.0</option>
                                        <option value="104">30.5</option>
                                        <option value="105">31.0</option>
                                        <option value="106">31.5</option>
                                        <option value="107">32.0</option>
                                        <option value="108">32.5</option>
                                        <option value="109">33.0</option>
                                        <option value="110">33.5</option>
                                        <option value="111">34.0</option>
                                        <option value="112">34.5</option>
                                        <option value="113">35.0</option>
                                        <option value="114">35.5</option>
                                        <option value="115">36.0</option>
                                        <option value="116">36.5</option>
                                        <option value="117">37.0</option>
                                        <option value="118">37.5</option>
                                        <option value="119">38.0</option>
                                        <option value="120">38.5</option>
                                        <option value="121">39.0</option>
                                        <option value="122">39.5</option>
                                        <option value="123">40.0</option>
                                        <option value="124">40.5</option>
                                        <option value="125">41.0</option>
                                        <option value="126">41.5</option>
                                        <option value="127">42.0</option>
                                        <option value="128">42.5</option>
                                        <option value="129">43.0</option>
                                        <option value="130">43.5</option>
                                        <option value="131">44.0</option>
                                        <option value="132">44.5</option>
                                        <option value="133">45.0</option>
                                        <option value="134">45.5</option>
                                        <option value="135">46.0</option>
                                        <option value="136">46.5</option>
                                        <option value="137">47.0</option>
                                        <option value="138">47.5</option>
                                        <option value="139">48.0</option>
                                        <option value="140">48.5</option>
                                        <option value="141">49.0</option>
                                        <option value="142">49.5</option>
                                        <option value="53">50.0</option>
                                        <option value="54">50.5</option>
                                        <option value="55">51.0</option>
                                        <option value="56">51.5</option>
                                        <option value="57">52.0</option>
                                        <option value="58">52.5</option>
                                        <option value="59">53.0</option>
                                        <option value="60">53.5</option>
                                        <option value="61">54.0</option>
                                        <option value="62">54.5</option>
                                        <option value="63">55.0</option>
                                        <option value="64">55.5</option>
                                        <option value="65">56.0</option>
                                        <option value="66">56.5</option>
                                        <option value="67">57.0</option>
                                        <option value="68">57.5</option>
                                        <option value="69">58.0</option>
                                        <option value="70">58.5</option>
                                        <option value="71">59.0</option>
                                        <option value="72">59.5</option>
                                        <option value="2">60.0</option>
                                        <option value="3">60.5</option>
                                        <option value="4">61.0</option>
                                        <option value="5">61.5</option>
                                        <option value="6">62.0</option>
                                        <option value="7">62.5</option>
                                        <option value="8">63.0</option>
                                        <option value="9">63.5</option>
                                        <option value="10">64.0</option>
                                        <option value="11">64.5</option>
                                        <option value="12">65.0</option>
                                        <option value="13">65.5</option>
                                        <option value="14">66.0</option>
                                        <option value="15">66.5</option>
                                        <option value="16">67.0</option>
                                        <option value="17">67.5</option>
                                        <option value="18">68.0</option>
                                        <option value="19">68.5</option>
                                        <option value="20">69.0</option>
                                        <option value="21">69.5</option>
                                        <option value="22">70.0</option>
                                        <option value="23">70.5</option>
                                        <option value="24">71.0</option>
                                        <option value="25">71.5</option>
                                        <option value="26">72.0</option>
                                        <option value="27">72.5</option>
                                        <option value="28">73.0</option>
                                        <option value="29">73.5</option>
                                        <option value="30">74.0</option>
                                        <option value="31">74.5</option>
                                        <option value="32">75.0</option>
                                        <option value="33">75.5</option>
                                        <option value="34">76.0</option>
                                        <option value="35">76.5</option>
                                        <option value="36">77.0</option>
                                        <option value="37">77.5</option>
                                        <option value="38">78.0</option>
                                        <option value="143">78.5</option>
                                        <option value="40">79.0</option>
                                        <option value="41">79.5</option>
                                        <option value="42">80.0</option>

                                    </select>
                                </div>
                                <div id='pdr' class="col-md-1">
                                    <select class="form-control ">
                                        <option selected="selected " value="0">PD R</option>
                                        <option value="1">None</option>
                                        <option value="73">20.0</option>
                                        <option value="74">20.5</option>
                                        <option value="75">21.0</option>
                                        <option value="76">21.5</option>
                                        <option value="77">22.0</option>
                                        <option value="78">22.5</option>
                                        <option value="79">23.0</option>
                                        <option value="90">23.5</option>
                                        <option value="91">24.0</option>
                                        <option value="92">24.5</option>
                                        <option value="93">25.0</option>
                                        <option value="94">25.5</option>
                                        <option value="95">26.0</option>
                                        <option value="96">26.5</option>
                                        <option value="97">27.0</option>
                                        <option value="98">27.5</option>
                                        <option value="99">28.0</option>
                                        <option value="100">28.5</option>
                                        <option value="101">29.0</option>
                                        <option value="102">29.5</option>
                                        <option value="103">30.0</option>
                                        <option value="104">30.5</option>
                                        <option value="105">31.0</option>
                                        <option value="106">31.5</option>
                                        <option value="107">32.0</option>
                                        <option value="108">32.5</option>
                                        <option value="109">33.0</option>
                                        <option value="110">33.5</option>
                                        <option value="111">34.0</option>
                                        <option value="112">34.5</option>
                                        <option value="113">35.0</option>
                                        <option value="114">35.5</option>
                                        <option value="115">36.0</option>
                                        <option value="116">36.5</option>
                                        <option value="117">37.0</option>
                                        <option value="118">37.5</option>
                                        <option value="119">38.0</option>
                                        <option value="120">38.5</option>
                                        <option value="121">39.0</option>
                                        <option value="122">39.5</option>
                                        <option value="123">40.0</option>
                                        <option value="124">40.5</option>
                                        <option value="125">41.0</option>
                                        <option value="126">41.5</option>
                                        <option value="127">42.0</option>
                                        <option value="128">42.5</option>
                                        <option value="129">43.0</option>
                                        <option value="130">43.5</option>
                                        <option value="131">44.0</option>
                                        <option value="132">44.5</option>
                                        <option value="133">45.0</option>
                                        <option value="134">45.5</option>
                                        <option value="135">46.0</option>
                                        <option value="136">46.5</option>
                                        <option value="137">47.0</option>
                                        <option value="138">47.5</option>
                                        <option value="139">48.0</option>
                                        <option value="140">48.5</option>
                                        <option value="141">49.0</option>
                                        <option value="142">49.5</option>
                                        <option value="53">50.0</option>
                                        <option value="54">50.5</option>
                                        <option value="55">51.0</option>
                                        <option value="56">51.5</option>
                                        <option value="57">52.0</option>
                                        <option value="58">52.5</option>
                                        <option value="59">53.0</option>
                                        <option value="60">53.5</option>
                                        <option value="61">54.0</option>
                                        <option value="62">54.5</option>
                                        <option value="63">55.0</option>
                                        <option value="64">55.5</option>
                                        <option value="65">56.0</option>
                                        <option value="66">56.5</option>
                                        <option value="67">57.0</option>
                                        <option value="68">57.5</option>
                                        <option value="69">58.0</option>
                                        <option value="70">58.5</option>
                                        <option value="71">59.0</option>
                                        <option value="72">59.5</option>
                                        <option value="2">60.0</option>
                                        <option value="3">60.5</option>
                                        <option value="4">61.0</option>
                                        <option value="5">61.5</option>
                                        <option value="6">62.0</option>
                                        <option value="7">62.5</option>
                                        <option value="8">63.0</option>
                                        <option value="9">63.5</option>
                                        <option value="10">64.0</option>
                                        <option value="11">64.5</option>
                                        <option value="12">65.0</option>
                                        <option value="13">65.5</option>
                                        <option value="14">66.0</option>
                                        <option value="15">66.5</option>
                                        <option value="16">67.0</option>
                                        <option value="17">67.5</option>
                                        <option value="18">68.0</option>
                                        <option value="19">68.5</option>
                                        <option value="20">69.0</option>
                                        <option value="21">69.5</option>
                                        <option value="22">70.0</option>
                                        <option value="23">70.5</option>
                                        <option value="24">71.0</option>
                                        <option value="25">71.5</option>
                                        <option value="26">72.0</option>
                                        <option value="27">72.5</option>
                                        <option value="28">73.0</option>
                                        <option value="29">73.5</option>
                                        <option value="30">74.0</option>
                                        <option value="31">74.5</option>
                                        <option value="32">75.0</option>
                                        <option value="33">75.5</option>
                                        <option value="34">76.0</option>
                                        <option value="35">76.5</option>
                                        <option value="36">77.0</option>
                                        <option value="37">77.5</option>
                                        <option value="38">78.0</option>
                                        <option value="143">78.5</option>
                                        <option value="40">79.0</option>
                                        <option value="41">79.5</option>
                                        <option value="42">80.0</option>

                                    </select>
                                </div>

                            </form>


                        </div>

                    </form>
                </div>
            </div>
        </div>


        <div class="row setup-content" id="step-3">
            <div class="col-md-12">
                <h1>Select Your Lens</h1>
                <div class="row form-group product-chooser">
                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                        <div id='single' class="product-chooser-item selected">
                            <img src="http://visionsource-drchristian.com/wp-content/uploads/sites/34/2013/07/lenses.jpg" class="img-rounded col-xs-4 col-sm-4 col-md-12 col-lg-12" alt="Mobile and Desktop">
                            <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                <span class="title">Plastic CR-39</span>
                                <span class="description">A general use lens for seeing things close up or far away.</span>
                                <span class="description">$104.50</span>
                                <p>
                                    <a data-toggle="collapse" data-target="#material">Details...</a>
                                <div id="material" class="collapse">
                                    <ul>
                                        <li>Recommended for mild, single vision prescriptions.</li>
                                        <li>For a more impact-resistant lens, consider Polycarbonate.</li>
                                        <li>For a stronger prescription, consider thinner lens options.</li>
                                    </ul>
                                </div>
                                </p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                        <div id='bifocals' class="product-chooser-item">
                            <img src="http://visionsource-drchristian.com/wp-content/uploads/sites/34/2013/07/lenses.jpg" class="img-rounded col-xs-4 col-sm-4 col-md-12 col-lg-12" alt="Mobile and Desktop">
                            <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                <span class="title">Polycarbonate</span>
                                <span class="description">High-Impact Resistant</span>
                                <span class="description">$159.50</span>
                                <p>
                                    <a data-toggle="collapse" data-target="#material2">Details...</a>
                                <div id="material2" class="collapse">
                                    <ul>
                                        <li>Recommended for mild to medium prescriptions</li>
                                        <li>30% thinner than Plastic CR-39 lenses</li>
                                        <li>Impact resistant: good for sports, outdoor activities, and children's lenses</li>
                                        <li>If you have a strong prescription, consider High Index lenses for a thinner, more attractive look</li>
                                    </ul>
                                </div>
                                </p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                        <div id='progressive' class="product-chooser-item">
                            <img src="http://visionsource-drchristian.com/wp-content/uploads/sites/34/2013/07/lenses.jpg" class="img-rounded col-xs-4 col-sm-4 col-md-12 col-lg-12" alt="Mobile and Desktop">
                            <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                <span class="title">Thinner</span>
                                <span class="description">For Strong Prescriptions</span>
                                <span class="description">$159.50</span>
                                <p>
                                    <a data-toggle="collapse" data-target="#material3">Details...</a>
                                <div id="material3" class="collapse">
                                    <ul>
                                        <li>45% thinner than Plastic CR-39 lenses</li>
                                        <li>Recommended for farsighted and stronger prescriptions</li>
                                        <li>Lightweight</li>
                                    </ul>
                                </div>
                                </p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                        <div id='progressive' class="product-chooser-item">
                            <img src="http://visionsource-drchristian.com/wp-content/uploads/sites/34/2013/07/lenses.jpg" class="img-rounded col-xs-4 col-sm-4 col-md-12 col-lg-12" alt="Mobile and Desktop">
                            <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                <span class="title">Thinnest</span>
                                <span class="description">50% Thinner Than Plastic</span>
                                <span class="description"> $204.50</span>
                                <p>
                                    <a data-toggle="collapse" data-target="#material4">Details...</a>
                                <div id="material4" class="collapse">
                                    <ul>
                                        <li>The thinnest lens available</li>
                                        <li>50% thinner than Plastic CR-39 lenses</li>
                                        <li>Eases eye strain</li>
                                        <li>Recommended for very strong prescriptions</li>
                                        <li>Lightweight with reduced curve</li>
                                    </ul>
                                </div>
                                </p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Next</button>
            </div>
        </div>
        <div class="row setup-content" id="step-4">
            <div class="col-md-12">
                <h1>Finally, Select Your Lens Options</h1>
                <div class="row form-group product-chooser">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div id='single' class="product-chooser-item selected">
                            <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                <span class="title">Standard</span>
                                <span class="description">$49.50</span>
                                <p>
                                <ul>
                                    <li>UV Protection</li>
                                    <li>Edge Polish</li>
                                    <li>Scratch Coating</li>
                                    <li> Anti-Reflective</li>
                                </ul>
                                </p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div id='bifocals' class="product-chooser-item">
                            <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                                <span class="title">Premium</span>
                                <span class="description">High-Impact Resistant</span>
                                <br><span class="description">$64.50</span>
                                <p>
                                <ul>
                                    <li>UV Protection</li>
                                    <li>Edge Polish</li>
                                    <li>Scratch Coating</li>
                                    <li>Anti-Reflective</li>
                                    <li>Plus: Digital Light Protection</li>
                                </ul>
                                </p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>

                </div>
                <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Add To Cart</button>
            </div>
        </div>


            <script type="text/javascript"><!--
                $('div.product-chooser').not('.disabled').find('div.product-chooser-item').on('click', function () {
                    $(this).parent().parent().find('div.product-chooser-item').removeClass('selected');
                    $(this).addClass('selected');
                    if ($(this).attr('id') == 'enter_now') {
                        $('#lens-form').show();
                    } else {
                        $('#lens-form').hide();
                    }
                    $(this).find('input[type="radio"]').prop("checked", true);

                });
                $('#lens-form').hide();

                $('#pdl').hide();
                $('#pdr').hide();
                $('input[type=radio][name=optradio]').change(function() {
                    if (this.value == 'two') {
                        $('#pdl').show();
                        $('#pdr').show();
                        $('#pd').hide();
                    }
                    else {
                        $('#pdl').hide();
                        $('#pdr').hide();
                        $('#pd').show();
                    }
                });

                var navListItems = $('div.setup-panel div a'),
                    allWells = $('.setup-content'),
                    allNextBtn = $('.nextBtn');

                allWells.hide();

                navListItems.click(function (e) {
                    e.preventDefault();
                    var $target = $($(this).attr('href')),
                        $item = $(this);

                    if (!$item.hasClass('disabled')) {
                        navListItems.removeClass('btn-primary').addClass('btn-default');
                        $item.addClass('btn-primary');
                        allWells.hide();
                        $target.show();
                        $target.find('input:eq(0)').focus();
                    }
                });

                allNextBtn.click(function () {
                    var curStep = $(this).closest(".setup-content"),
                        curStepBtn = curStep.attr("id"),
                        nextStepWizard = $('div.setup-panel div a[href="#' + curStepBtn + '"]').parent().next().children("a"),
                        curInputs = curStep.find("input[type='text'],input[type='url']"),
                        isValid = true;

                    $(".form-group").removeClass("has-error");
                    for (var i = 0; i < curInputs.length; i++) {
                        if (!curInputs[i].validity.valid) {
                            isValid = false;
                            $(curInputs[i]).closest(".form-group").addClass("has-error");
                        }
                    }

                    if (isValid)
                        nextStepWizard.removeAttr('disabled').trigger('click');
                });

                $('div.setup-panel div a.btn-primary').trigger('click');
                //--></script>
            <?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
