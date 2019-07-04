package kz.miner.cabinet.minercabinet.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PagesController {

	
	
	@Value("${backend.url}")
	private String backendUrl;
	
	@GetMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/employes")
	public ModelAndView employes() {
		return new ModelAndView("employes").addObject("backend_url", backendUrl).addObject("shift", "").addObject("name", "Все сотрудники");
	}
//	
//	@GetMapping("/employes-owl")
//	public ModelAndView employesowl() {
//		return new ModelAndView("employes").addObject("backend_url", backendUrl).addObject("shiftname", "Owl").addObject("name", "Сотрудники Owl");
//	}
	
	@GetMapping("/employes-shift")
	public ModelAndView employesshift(@RequestParam Long shift, @RequestParam String name) {
		return new ModelAndView("employes").addObject("backend_url", backendUrl).addObject("shift", ""+shift).addObject("name", "Сотрудники / "+name);
	}

//	@GetMapping("/employes-day")
//	public ModelAndView employesday() {
//		return new ModelAndView("employes").addObject("backend_url", backendUrl).addObject("shiftname", "Day").addObject("name", " Сотрудники Day");
//	}
//	
//	@GetMapping("/employes-evening")
//	public ModelAndView employesevening() {
//		return new ModelAndView("employes").addObject("backend_url", backendUrl).addObject("shiftname", "Evening").addObject("name", " Сотрудники Evening");
//	}
	
	@GetMapping("/employes-add")
	public ModelAndView employesadd() {
		return new ModelAndView("employes-add").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/employes-no-shift")
	public ModelAndView employesnoshift() {
		return new ModelAndView("employes").addObject("backend_url", backendUrl).addObject("shift", "null").addObject("name", "Сотрудники без смены");
	}
	
	@GetMapping("/employes-all")
	public ModelAndView employesall() {
		return new ModelAndView("employes").addObject("backend_url", backendUrl).addObject("shift", "all").addObject("name", "Все сотрудники");
	}
	
	@GetMapping("/employes-edit")
	public ModelAndView employesedit(Long id) {
		return new ModelAndView("employes-edit")
				.addObject("employe_id",id)
				.addObject("backend_url", backendUrl);
	}
	
	
	/*
	 * @GetMapping("/equipment") public ModelAndView equipment() { return new
	 * ModelAndView("equipment").addObject("backend_url", backendUrl); }
	 */
	

	
	@GetMapping("/equipment-tagged")
	public ModelAndView equipmentevening() {
		return new ModelAndView("equipment").addObject("backend_url", backendUrl).addObject("communicationNode", "tagged").addObject("name", "Оборудование с меткой");
	}
	
	@GetMapping("/equipment-no-tagged")
	public ModelAndView equipmentnoshift() {
		return new ModelAndView("equipment").addObject("backend_url", backendUrl).addObject("communicationNode", "no-tagged").addObject("name", "Оборудование без метки");
	}
	
	
	@GetMapping("/equipment-all")
	public ModelAndView equipmentall() {
		return new ModelAndView("equipment").addObject("backend_url", backendUrl).addObject("communicationNode", " ").addObject("name", "Все оборудование ");
	}
	
	
	@GetMapping("/equipment-add")
	public ModelAndView equipmentadd() {
		return new ModelAndView("equipment-add").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/equipment-edit")
	public ModelAndView equipmentedit(Long id) {
		return new ModelAndView("equipment-edit")
				.addObject("equipment_id",id)
				.addObject("backend_url", backendUrl);
	}
	
	
	@GetMapping("/zones-add")
	public ModelAndView zonesadd() {
		return new ModelAndView("zones-add").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/zones-all")
	public ModelAndView zones() {
		return new ModelAndView("zones").addObject("backend_url", backendUrl).addObject("communicationNode", " ").addObject("name", "Все зоны");
	}
	
	@GetMapping("/zones-tagged")
	public ModelAndView zonestaggged() {
		return new ModelAndView("zones").addObject("backend_url", backendUrl).addObject("communicationNode", "tagged").addObject("name", "Зоны  с меткой");
	}
	
	
	@GetMapping("/zones-no-tagged")
	public ModelAndView zonesnotaggged() {
		return new ModelAndView("zones").addObject("backend_url", backendUrl).addObject("communicationNode", "no-tagged").addObject("name", "Зоны без метки");
	}
	
	@GetMapping("/staff-location-history")
	public ModelAndView stafflocationhistory() {
		return new ModelAndView("staff-location-history").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/transport-location-history")
	public ModelAndView transportlocationhistory() {
		return new ModelAndView("transport-location-history").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/reports-restricted-areas")
	public ModelAndView reportsrestrictedareas() {
		return new ModelAndView("reports-restricted-areas").addObject("backend_url", backendUrl);
	}

   
	@GetMapping("/plan-load")
	public ModelAndView planload() {
		return new ModelAndView("plan-load").addObject("backend_url", backendUrl);
	}
	
	
	@GetMapping("/planned-work-transport")
	public ModelAndView plannedworktransport() {
		return new ModelAndView("planned-work-transport").addObject("backend_url", backendUrl);
	}
	

	@GetMapping("/planned-duration-mining-cycle")
	public ModelAndView planneddurationminingcycle() {
		return new ModelAndView("planned-duration-mining-cycle").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/planned-time-staff-zones")
	public ModelAndView plannedtimestaffzones() {
		return new ModelAndView("planned-time-staff-zones").addObject("backend_url", backendUrl);
	}
	
	
	@GetMapping("/gas-gauge-targets")
	public ModelAndView gasgaugetargets() {
		return new ModelAndView("gas-gauge-targets").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/countdown-time-transport")
	public ModelAndView countdowntimetransport() {
		return new ModelAndView("countdown-time-transport").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/time-report-on-mining")
	public ModelAndView timereportonmining() {
		return new ModelAndView("time-report-on-mining").addObject("backend_url", backendUrl);
	}
	
	@GetMapping("/concentration-report")
	public ModelAndView concentrationreport() {
		return new ModelAndView("concentration-report").addObject("backend_url", backendUrl);
	}
	
	
	@GetMapping("/report-collision-dump-truck")
	public ModelAndView reportcollisiondumptruck() {
		return new ModelAndView("report-collision-dump-truck").addObject("backend_url", backendUrl);
	}
   
	
	@GetMapping("/benchmark-report")
	public ModelAndView benchmarkreport() {
		return new ModelAndView("benchmark-report").addObject("backend_url", backendUrl);
	}
   
	@GetMapping("/data-flow-statistics")
	public ModelAndView dataflowstatisticst() {
		return new ModelAndView("data-flow-statistics").addObject("backend_url", backendUrl);
	}
	
	
	@GetMapping("/story-connection-history")
	public ModelAndView storyconnectionhistory() {
		return new ModelAndView("story-connection-history").addObject("backend_url", backendUrl);
	}
	


	@GetMapping("/role-user")
	public ModelAndView roleuser() {
		return new ModelAndView("role-user").addObject("backend_url", backendUrl);
	
	}
	
	
	@GetMapping("/veins")
	public ModelAndView veins() {
		return new ModelAndView("veins").addObject("backend_url", backendUrl);
	
	}
	
	@GetMapping("/mine")
	public ModelAndView mine() {
		return new ModelAndView("mine").addObject("backend_url", backendUrl);
	
	}
	

	
	@GetMapping("/users")
	public ModelAndView users() {
		return new ModelAndView("users").addObject("backend_url", backendUrl);
	
	}
	
	
	
	
	
	
	
	@GetMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login").addObject("backend_url", backendUrl);
	}
	
	
	
	@GetMapping("/grafana-test")
	public ModelAndView grafanatest() {
		return new ModelAndView("grafana-test").addObject("backend_url", backendUrl);
	}
	
	
	
	@GetMapping("/telemtry")
	public ModelAndView telemtry() {
		return new ModelAndView("telemtry").addObject("backend_url", backendUrl);
	
	}
	
	
}
