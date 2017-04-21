<?php

class ControllerExtensionModuleSearchSuggestion extends Controller {

	private $error = array();

	public function index() {
		$data = $this->load->language('extension/module/search_suggestion');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			$this->model_setting_setting->editSetting('search_suggestion', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
		}

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], true),
			'separator' => false
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token']. '&type=module', true),
			'separator' => ' :: '
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/search_suggestion', 'token=' . $this->session->data['token'], true),
			'separator' => ' :: '
		);

		$data['action'] = $this->url->link('extension/module/search_suggestion', 'token=' . $this->session->data['token'], true);

		$data['cancel'] = $this->url->link('extension/extension/', 'token=' . $this->session->data['token']. '&type=module', true);

		if (isset($this->request->post['search_suggestion_status'])) {
			$data['search_suggestion_status'] = $this->request->post['search_suggestion_status'];
		} else {
			$data['search_suggestion_status'] = $this->config->get('search_suggestion_status');
		}

		$data['modules'] = array();
		if (isset($this->request->post['search_suggestion_module'])) {
			$data['modules'] = $this->request->post['search_suggestion_module'];
		} elseif ($this->config->get('search_suggestion_module')) {
			$data['modules'] = $this->config->get('search_suggestion_module');
		}

		if (isset($this->request->post['search_suggestion_options'])) {
			$options = $this->request->post['search_suggestion_options'];
		} elseif ($this->config->get('search_suggestion_options')) {
			$options = $this->config->get('search_suggestion_options');
		}
		
		uasort($options['search_field'], array($this, 'sort_fields'));
		
		$data['options'] = $options;

		$this->load->model('catalog/attribute');
		$data['attributes'] = $this->model_catalog_attribute->getAttributes();

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/search_suggestion', $data));
	}
	
	private function sort_fields ($a, $b) {
		if (isset($a['sort']) && isset($b['sort'])) {
			return $a['sort'] - $b['sort'];
		} else {
			return 100;
		} 
	}

	public function install() {
		$this->load->model('setting/setting');
		$this->load->model('catalog/search_suggestion');
		
		$this->model_setting_setting->deleteSetting('search_suggestion');
		$setting['search_suggestion_options'] = $this->model_catalog_search_suggestion->getDefaultOptions();
		$setting['search_suggestion_status'] = 1;
		$setting['search_suggestion_module'][0]['search_suggestion'] = 1;
		$this->model_setting_setting->editSetting('search_suggestion', $setting);
		
		$this->model_catalog_search_suggestion->install();
	}

	public function uninstall() {
		$this->load->model('setting/setting');
		$this->model_setting_setting->deleteSetting('search_suggestion');
	}

	private function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/search_suggestion')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
}