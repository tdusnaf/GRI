sap.ui.define([
	"sap/ui/core/mvc/Controller"
], (Controller) => {
	"use strict";

	return Controller.extend("herramientaaprovisionamiento.docstatus.controller.Texts", {
		onInit() {
			const oRouter = this.getOwnerComponent().getRouter();
			oRouter.getRoute("Status_Texts").attachPatternMatched(this.onObjectMatched, this);



		},

		onObjectMatched(oEvent) {		
			const oID = window.decodeURIComponent(oEvent.getParameter('arguments').ID);
			const sPath = "/Status(ID=guid'" + oID + "',IsActiveEntity=true)";
			console.log("Consulta OData con filtro: ", sPath);
			this.getView().bindElement({
				path: sPath,
				parameters: {
					expand: "texts",
				}// Opcional si tienes entidades relacionadas a expandir
			});


		},


	});
});