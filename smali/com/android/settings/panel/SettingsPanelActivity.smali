.class public Lcom/android/settings/panel/SettingsPanelActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsPanelActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field final mBundle:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-string v0, "panel_activity"

    .line 41
    iput-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private createOrUpdatePanel(Z)V
    .locals 4

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "panel_activity"

    const-string v0, "Null intent, closing Panel Activity"

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v1, "com.android.settings.panel.extra.PACKAGE_NAME"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PANEL_TYPE_ARGUMENT"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PANEL_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "PANEL_MEDIA_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0279

    .line 90
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_1

    .line 93
    instance-of p1, v2, Lcom/android/settings/panel/PanelFragment;

    if-eqz p1, :cond_1

    .line 94
    check-cast v2, Lcom/android/settings/panel/PanelFragment;

    .line 95
    iget-object p0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {v2}, Lcom/android/settings/panel/PanelFragment;->updatePanelWithAnimation()V

    goto :goto_0

    :cond_1
    const p1, 0x7f0d0193

    .line 98
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x50

    .line 102
    invoke-virtual {p1, v2}, Landroid/view/Window;->setGravity(I)V

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 103
    invoke-virtual {p1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 105
    new-instance p1, Lcom/android/settings/panel/PanelFragment;

    invoke-direct {p1}, Lcom/android/settings/panel/PanelFragment;-><init>()V

    .line 106
    iget-object p0, p0, Lcom/android/settings/panel/SettingsPanelActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/panel/SettingsPanelActivity;->createOrUpdatePanel(Z)V

    return-void
.end method
