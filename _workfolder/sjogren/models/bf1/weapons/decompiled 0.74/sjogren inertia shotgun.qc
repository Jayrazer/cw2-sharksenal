// Created by Crowbar 0.74

$modelname "bf1\weapons\Sjogren Inertia shotgun.mdl"

$bodygroup "Body"
{
	studio "sjogrenshotgunbase.smd"
}
$bodygroup "bolt"
{
	studio "sjogrenshotgunbolt.smd"
	studio "sjogrenshotgunbolt2.smd"
}
$bodygroup "elevator"
{
	studio "sjogrenshotgunelevator.smd"
	studio "sjogrenshotgunelevator2.smd"
	studio "sjogrenshotgunelevator3.smd"
	studio "sjogrenshotgunelevator4.smd"
}
$bodygroup "trigger"
{
	studio "sjogrenshotguntrigger.smd"
	studio "sjogrenshotguntrigger2.smd"
}
$bodygroup "chamberedround"
{
	studio "sjogrenshotgunchamberedround.smd"
	blank
}
$bodygroup "magazineround"
{
	studio "sjogrenshotgunmagazineround.smd"
	blank
}


$surfaceprop "metal"

$contents "solid"

$illumposition 0 -25.284 1.806

$ambientboost

$mostlyopaque

$cdmaterials "models\bf1\weapons\"

$texturegroup "skinfamilies"
{
	{ "bf1_sjogrenshotgun"   "bf1_sjogrenshotgunwood"  }
	{ "bf1_sjogrenshotgun"   "bf1_sjogrenshotgunwood2" }
	{ "bf1_sjogrenshotgun"   "bf1_sjogrenshotgunwood3" }
	{ "bf1_sjogrenshotgun_2" "bf1_sjogrenshotgunwood"  }
	{ "bf1_sjogrenshotgun_2" "bf1_sjogrenshotgunwood2" }
	{ "bf1_sjogrenshotgun_2" "bf1_sjogrenshotgunwood3" }
}

$cbox 0 0 0 0 0 0

$bbox -0.642 -1.433 -2.607 51.313 1.414 6.202

$definebone "root" "" 0 0 0 0 -89.999982 0 0 0 0 0 0 0
$definebone "bolt" "root" 18.522913 0 5.139278 0 0 0 0 0 0 0 0 0
$definebone "elevator" "root" 17.477495 0 3.094433 0 0 0 0 0 0 0 0 0
$definebone "trigger" "root" 14.795 -0.000005 3.057342 0 0 0 0 0 0 0 0 0
$definebone "chamberedround" "bolt" 3.422163 0 0 0 0 0 0 0 0 0 0 0
$definebone "tuberound" "root" 21.474764 0 3.901095 0 0 0 0 0 0 0 0 0


$sequence "Idle" {
	"sjogren inertia shotgun_anims\Idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "sjogren inertia shotgun_physics.smd"
{
	$mass 3.288
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 8

}
