.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# direct methods
.method public static copyLifecycleExtra(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "firstRun"

    const-string v1, "isSetupFlow"

    .line 102
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-void
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 16

    .line 43
    invoke-static/range {p0 .. p0}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f130109

    if-eqz v0, :cond_c

    .line 47
    invoke-static/range {p0 .. p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v2

    const v3, 0x7f13010b

    const v4, 0x7f130111

    const-string v5, "glif_light"

    const-string v6, "glif_v3"

    const-string v7, "glif_v2"

    const-string v8, "glif"

    const-string v9, "glif_v3_light"

    const-string v10, "glif_v2_light"

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v11, 0x1

    if-eqz v2, :cond_7

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v15

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v11, :cond_5

    if-eq v0, v15, :cond_4

    if-eq v0, v14, :cond_3

    if-eq v0, v13, :cond_2

    if-eq v0, v12, :cond_1

    goto/16 :goto_4

    :cond_1
    return v1

    :cond_2
    const v0, 0x7f13010a

    return v0

    :cond_3
    return v3

    :cond_4
    const v0, 0x7f13010c

    return v0

    :cond_5
    return v4

    :cond_6
    const v0, 0x7f130113

    return v0

    .line 63
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto :goto_2

    :sswitch_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v13

    goto :goto_3

    :sswitch_7
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v11

    goto :goto_3

    :sswitch_8
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v14

    goto :goto_3

    :sswitch_9
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v12

    goto :goto_3

    :sswitch_a
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_b
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v15

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, -0x1

    :goto_3
    if-eqz v0, :cond_b

    if-eq v0, v11, :cond_b

    if-eq v0, v15, :cond_a

    if-eq v0, v14, :cond_a

    if-eq v0, v13, :cond_9

    if-eq v0, v12, :cond_9

    goto :goto_4

    :cond_9
    return v1

    :cond_a
    return v3

    :cond_b
    return v4

    :cond_c
    :goto_4
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_5
        -0x49f8f44f -> :sswitch_4
        0x3074c2 -> :sswitch_3
        0x6e4af19 -> :sswitch_2
        0x6e4af1a -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7edf2f90 -> :sswitch_b
        -0x49f8f44f -> :sswitch_a
        0x3074c2 -> :sswitch_9
        0x6e4af19 -> :sswitch_8
        0x6e4af1a -> :sswitch_7
        0x2dc1f359 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getThemeString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "theme"

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 37
    invoke-static {}, Landroid/sysprop/SetupWizardProperties;->theme()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 1

    .line 80
    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p0

    const v0, 0x7f130111

    if-ne p0, v0, :cond_0

    const p0, 0x7f130115

    goto :goto_0

    :cond_0
    const v0, 0x7f130113

    if-ne p0, v0, :cond_1

    const p0, 0x7f130114

    goto :goto_0

    :cond_1
    const v0, 0x7f13010b

    if-ne p0, v0, :cond_2

    const p0, 0x7f13010e

    goto :goto_0

    :cond_2
    const v0, 0x7f13010a

    if-ne p0, v0, :cond_3

    const p0, 0x7f13018a

    goto :goto_0

    :cond_3
    const v0, 0x7f130109

    if-ne p0, v0, :cond_4

    const p0, 0x7f13018b

    goto :goto_0

    :cond_4
    const p0, 0x7f13010d

    :goto_0
    return p0
.end method
