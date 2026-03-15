.class public Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GameDriverFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

.field private mPreference:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "footer_preference"

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    new-instance p1, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    new-instance v0, Landroid/os/Handler;

    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/GameDriverContentObserver$OnGameDriverContentChangedListener;)V

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/FooterPreference;

    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 62
    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "game_driver_all_apps"

    const/4 v1, 0x0

    .line 60
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public onGameDriverContentChanged()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->mGameDriverContentObserver:Lcom/android/settings/development/gamedriver/GameDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/gamedriver/GameDriverFooterPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/gamedriver/GameDriverContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
