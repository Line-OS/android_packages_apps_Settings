.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field private final synthetic f$1:Landroidx/fragment/app/FragmentActivity;

.field private final synthetic f$2:Lcom/android/settingslib/drawer/Tile;

.field private final synthetic f$3:Landroid/content/Intent;

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$1:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$2:Lcom/android/settingslib/drawer/Tile;

    iput-object p4, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$3:Landroid/content/Intent;

    iput p5, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$4:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$1:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$2:Lcom/android/settingslib/drawer/Tile;

    iget-object v3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$3:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$n7ObiN2_yCjEN2AoruyvfFOoh3w;->f$4:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindPreferenceToTile$0$DashboardFeatureProviderImpl(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
