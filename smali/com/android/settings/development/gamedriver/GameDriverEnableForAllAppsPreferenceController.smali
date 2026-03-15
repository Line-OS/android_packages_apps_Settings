.class public Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GameDriverEnableForAllAppsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final GAME_DRIVER_ALL_APPS:I = 0x1

.field public static final GAME_DRIVER_DEFAULT:I = 0x0

.field public static final GAME_DRIVER_OFF:I = 0x3

.field public static final GAME_DRIVER_PRERELEASE_ALL_APPS:I = 0x2


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

.field private mPreference:Landroidx/preference/ListPreference;

.field private final mPreferenceDefault:Ljava/lang/String;

.field private final mPreferenceGameDriver:Ljava/lang/String;

.field private final mPreferencePrereleaseDriver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1206e9

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    const p2, 0x7f1206ea

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    const p2, 0x7f1206eb

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    .line 72
    new-instance p1, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    new-instance p2, Landroid/os/Handler;

    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p2, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;)V

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    .line 90
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "game_driver_all_apps"

    .line 79
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    return v1
.end method

.method public onGameDriverContentChanged()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 123
    check-cast p1, Landroidx/preference/ListPreference;

    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 125
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "game_driver_all_apps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 128
    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v1, v4

    goto :goto_0

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    .line 135
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eq v1, v0, :cond_2

    .line 139
    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return v4
.end method

.method public onStart()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 105
    check-cast p1, Landroidx/preference/ListPreference;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "game_driver_all_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceGameDriver:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferencePrereleaseDriver:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverEnableForAllAppsPreferenceController;->mPreferenceDefault:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
