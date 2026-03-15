.class public Lcom/android/settings/notification/AppBubbleNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "AppBubbleNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mObserverMixin:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/android/settings/notification/AppBubbleNotificationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/AppBubbleNotificationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method

.method protected static getPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/AppBubbleNotificationSettings;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/notification/AppBubbleNotificationSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/NotificationPreferenceController;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/HeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/android/settings/notification/BubblePreferenceController;

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    :goto_0
    new-instance v2, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v2}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/settings/notification/BubblePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/NotificationBackend;Z)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {p1, p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->getPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/AppBubbleNotificationSettings;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AppBubNotiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150015

    return p0
.end method

.method public onGlobalBubblePermissionChanged()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mObserverMixin:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;

    invoke-virtual {v0}, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;->onStop()V

    .line 99
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 78
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 80
    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationPreferenceController;

    .line 87
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannel:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mChannelGroup:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase;->mSuspendedAppsAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 88
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 92
    new-instance v0, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin$Listener;)V

    iput-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mObserverMixin:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;

    .line 93
    iget-object p0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->mObserverMixin:Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;

    invoke-virtual {p0}, Lcom/android/settings/notification/GlobalBubblePermissionObserverMixin;->onStart()V

    return-void

    :cond_2
    :goto_1
    const-string v0, "AppBubNotiSettings"

    const-string v1, "Missing package or uid or packageinfo"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
