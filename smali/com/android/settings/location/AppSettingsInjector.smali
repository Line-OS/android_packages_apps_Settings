.class public Lcom/android/settings/location/AppSettingsInjector;
.super Lcom/android/settingslib/location/SettingsInjector;
.source "AppSettingsInjector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Landroidx/preference/Preference;
    .locals 0

    .line 40
    iget-object p0, p2, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 41
    new-instance p0, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Lcom/android/settings/widget/RestrictedAppPreference;

    iget-object p2, p2, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
