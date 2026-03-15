.class public Lcom/android/settings/location/LocationServicePreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "LocationServicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field static final INTENT_FILTER_INJECTED_SETTING_CHANGED:Landroid/content/IntentFilter;


# instance fields
.field private mCategoryLocationServices:Landroidx/preference/PreferenceCategory;

.field private mCategoryLocationServicesManaged:Landroidx/preference/PreferenceCategory;

.field private final mFragment:Lcom/android/settings/location/LocationSettings;

.field mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

.field private final mInjector:Lcom/android/settings/location/AppSettingsInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.InjectedSettingChanged"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/LocationServicePreferenceController;->INTENT_FILTER_INJECTED_SETTING_CHANGED:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/android/settings/location/AppSettingsInjector;

    invoke-direct {v0, p1}, Lcom/android/settings/location/AppSettingsInjector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/location/LocationServicePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/AppSettingsInjector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/location/AppSettingsInjector;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p3}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 68
    iput-object p2, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mFragment:Lcom/android/settings/location/LocationSettings;

    .line 69
    iput-object p4, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/AppSettingsInjector;

    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationServicePreferenceController;)Lcom/android/settings/location/AppSettingsInjector;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/AppSettingsInjector;

    return-object p0
.end method

.method private getLocationServices()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;>;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/AppSettingsInjector;

    iget-object v2, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mFragment:Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0x2710

    if-eq v0, v3, :cond_0

    .line 148
    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    .line 147
    :goto_0
    invoke-virtual {v1, v2, p0}, Lcom/android/settingslib/location/SettingsInjector;->getInjectedSettings(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "location_services"

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServices:Landroidx/preference/PreferenceCategory;

    const-string v0, "location_services_managed_profile"

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServicesManaged:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "location_services"

    return-object p0
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjector:Lcom/android/settings/location/AppSettingsInjector;

    invoke-virtual {p0}, Lcom/android/settingslib/location/SettingsInjector;->reloadStatusMessages()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/settings/location/LocationServicePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationServicePreferenceController$1;-><init>(Lcom/android/settings/location/LocationServicePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mInjectedSettingsReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/settings/location/LocationServicePreferenceController;->INTENT_FILTER_INJECTED_SETTING_CHANGED:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 89
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServices:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 90
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServicesManaged:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/location/LocationServicePreferenceController;->getLocationServices()Ljava/util/Map;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    .line 96
    instance-of v5, v4, Lcom/android/settings/widget/RestrictedAppPreference;

    if-eqz v5, :cond_0

    .line 97
    check-cast v4, Lcom/android/settings/widget/RestrictedAppPreference;

    invoke-virtual {v4}, Lcom/android/settings/widget/RestrictedAppPreference;->checkRestrictionAndSetDisabled()V

    goto :goto_1

    .line 100
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServices:Landroidx/preference/PreferenceCategory;

    invoke-static {v0, v2}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    move v0, v5

    goto :goto_0

    .line 104
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServicesManaged:Landroidx/preference/PreferenceCategory;

    invoke-static {v1, v2}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    move v1, v5

    goto :goto_0

    .line 109
    :cond_3
    iget-object p1, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServices:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 110
    iget-object p0, p0, Lcom/android/settings/location/LocationServicePreferenceController;->mCategoryLocationServicesManaged:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
