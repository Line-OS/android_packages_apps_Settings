.class public Lcom/android/settings/wifi/AddNetworkFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "AddNetworkFragment.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final CANCEL_BUTTON_ID:I = 0x102001a

.field static final SUBMIT_BUTTON_ID:I = 0x1020019


# instance fields
.field private mCancelBtn:Landroid/widget/Button;

.field private mSubmitBtn:Landroid/widget/Button;

.field private mUIController:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private successfullyFinish(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "wifi_config_key"

    .line 195
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 196
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->handleSubmitAction()V

    return-void
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x614

    return p0
.end method

.method public getMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    return-object p0
.end method

.method handleCancelAction()V
    .locals 1

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method handleSubmitAction()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AddNetworkFragment;->successfullyFinish(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const-string p1, "wifi_configuration"

    .line 125
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AddNetworkFragment;->successfullyFinish(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 105
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 106
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x0

    .line 110
    :goto_0
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 102
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->handleCancelAction()V

    goto :goto_1

    .line 99
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->handleSubmitAction()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_3
        0x102001a -> :sswitch_2
        0x7f0a0319 -> :sswitch_1
        0x7f0a0407 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d021b

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102001b

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    .line 71
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const p2, 0x1020019

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    const p2, 0x102001a

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    const p2, 0x7f0a0407

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    const p3, 0x7f0a0319

    .line 77
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance p2, Lcom/android/settings/wifi/WifiConfigController;

    const/4 p3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/AddNetworkFragment;->getMode()I

    move-result v0

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;I)V

    iput-object p2, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController;

    return-object p1
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 90
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mUIController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->updatePassword()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/settings/wifi/AddNetworkFragment;->mSubmitBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
