"use strict";
var router_1 = require("@angular/router");
var appRoutes = [
    { path: "", redirectTo: "home", pathMatch: "full" },
    { path: "product", loadChildren: "app/product/product.module#ProductModule" }
];
exports.routing = router_1.RouterModule.forRoot(appRoutes);
