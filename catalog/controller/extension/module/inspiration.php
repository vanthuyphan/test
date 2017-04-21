<?php
class Controllerextensionmoduleinspiration extends Controller {
    public function index() {
        $this->load->language('extension/module/inspiration'); // loads the language file of inspiration

        $data['heading_title'] = $this->language->get('heading_title'); // set the heading_title of the module

        $data['inspiration_value'] = html_entity_decode($this->config->get('inspiration_text_field')); // gets the saved value of inspiration text field and parses it to a variable to use this inside our module view

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/extension/module/inspiration.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/extension/module/inspiration.tpl', $data);
        } else {
            return $this->load->view('extension/module/inspiration.tpl', $data);
        }
    }
}