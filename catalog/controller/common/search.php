<?php
class ControllerCommonSearch extends Controller {
	public function index() {
		$this->load->language('common/search');

		$data['text_search'] = $this->language->get('text_search');

		if (isset($this->request->get['search'])) {
			$data['search'] = $this->request->get['search'];
		} else {
			$data['search'] = '';
		}

		/* Search autocomplete */
		$data['search_action'] = $this->url->link('product/json', '', true);
		$data['button_cart'] = $this->language->get('button_cart');
		/* end search autocomplete */

		return $this->load->view('common/search', $data);
	}
}