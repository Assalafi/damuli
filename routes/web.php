<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SuperAdminController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\mainController;
use App\Http\Controllers\OrganizationController;
use App\Http\Controllers\FleetOfficerController;
use App\Http\Controllers\vehicleController;
use App\Http\Controllers\AdminDepartmentController;
use App\Http\Controllers\FillingStationController;
use App\Http\Controllers\FuelDepartmentController;
use App\Http\Controllers\MaintenanceDepartmentController;
use App\Http\Controllers\FinanceDepartmentController;
use App\Http\Controllers\StorekeeperController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    if(session()->has('log')){return redirect('dashboard');}
    return view('login');
});
Route::get('logout', function () {
    session()->pull('log');
    return redirect('/');
});


Route::post('authenticate', [LoginController::class, 'authentication']);

Route::view('register','register');
Route::post('store', [SuperAdminController::class, 'store']);
Route::get('Dashboard', [mainController::class, 'index']);

Route::get('Organization', [OrganizationController::class, 'index']);
Route::post('addOrganization', [OrganizationController::class, 'store']);
Route::post('updateOrganization', [OrganizationController::class, 'update']);
Route::post('deleteOrganization', [OrganizationController::class, 'destroy']);

Route::get('fleet Officer', [FleetOfficerController::class, 'index']);
Route::post('addFleetOfficer', [FleetOfficerController::class, 'store']);
Route::post('updateFleetOfficer', [FleetOfficerController::class, 'update']);
Route::post('deleteFleetOfficer', [FleetOfficerController::class, 'destroy']);

Route::get('vehicle', [vehicleController::class, 'index']);
Route::post('addVehicle', [vehicleController::class, 'store']);
Route::post('updateVehicle', [vehicleController::class, 'update']);
Route::post('deleteVehicle', [vehicleController::class, 'destroy']);

Route::get('admin', [AdminDepartmentController::class, 'index']);
Route::post('addAdmin', [AdminDepartmentController::class, 'store']);
Route::post('updateAdmin', [AdminDepartmentController::class, 'update']);
Route::post('deleteAdmin', [AdminDepartmentController::class, 'destroy']);

Route::get('filling station', [FillingStationController::class, 'index']);
Route::post('addFillingStation', [FillingStationController::class, 'store']);
Route::post('updateFillingStation', [FillingStationController::class, 'update']);
Route::post('deleteFillingStation', [FillingStationController::class, 'destroy']);

Route::get('fuel department', [FuelDepartmentController::class, 'index']);
Route::post('addFuelDepartment', [FuelDepartmentController::class, 'store']);
Route::post('updateFuelDepartment', [FuelDepartmentController::class, 'update']);
Route::post('deleteFuelDepartment', [FuelDepartmentController::class, 'destroy']);

Route::get('maintenance department', [MaintenanceDepartmentController::class, 'index']);
Route::post('addMaintenanceDepartment', [MaintenanceDepartmentController::class, 'store']);
Route::post('updateMaintenanceDepartment', [MaintenanceDepartmentController::class, 'update']);
Route::post('deleteMaintenanceDepartment', [MaintenanceDepartmentController::class, 'destroy']);

Route::get('finance', [FinanceDepartmentController::class, 'index']);
Route::post('addFinance', [FinanceDepartmentController::class, 'store']);
Route::post('updateFinance', [FinanceDepartmentController::class, 'update']);
Route::post('deleteFinance', [FinanceDepartmentController::class, 'destroy']);

Route::get('storekeeper', [StorekeeperController::class, 'index']);
Route::post('addStorekeeper', [StorekeeperController::class, 'store']);
Route::post('updateStorekeeper', [StorekeeperController::class, 'update']);
Route::post('deleteStorekeeper', [StorekeeperController::class, 'destroy']);

