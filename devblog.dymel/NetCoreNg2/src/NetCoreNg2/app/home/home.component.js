"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var core_1 = require("@angular/core");
var HomeComponent = (function () {
    function HomeComponent(helloService) {
        this.helloService = helloService;
    }
    HomeComponent.prototype.ngOnInit = function () {
        this.greet("Michal");
    };
    HomeComponent.prototype.greet = function (name) {
        var _this = this;
        this.helloService
            .greet(name)
            .subscribe(function (data) { return _this.greeting = data; });
    };
    HomeComponent = __decorate([
        core_1.Component({
            template: "\n        <my-nav></my-nav>\n        <h1>Greeting test</h1>\n        <p id=\"greeting\">{{greeting}}</p>\n    "
        })
    ], HomeComponent);
    return HomeComponent;
}());
exports.HomeComponent = HomeComponent;
