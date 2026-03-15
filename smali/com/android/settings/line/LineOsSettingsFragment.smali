.class public Lcom/android/settings/line/LineOsSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
    const v0, Lcom/android/settings/R$xml;->line_os_settings:I
    invoke-virtual {p0, v0}, Lcom/android/settings/line/LineOsSettingsFragment;->addPreferencesFromResource(I)V
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1
    const/16 v0, 0x1
    return v0
.end method