const-string v2, "linify_dev"
invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
move-result-object v1

invoke-static {p0}, Lcom/android/settings/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z
move-result v0

if-eqz v0, :dev_disabled

invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

:dev_disabled