.class public Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DeviceAdminSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings$1;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DeviceAdminSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x204

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150046

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 43
    const-class p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->setFooterPreferenceMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    return-void
.end method
