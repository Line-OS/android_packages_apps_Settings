.class public Lcom/android/settings/notification/BubbleWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BubbleWarningDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a6

    return p0
.end method

.method public synthetic lambda$onCreateDialog$0$BubbleWarningDialogFragment(Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 62
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/BubblePreferenceController;->applyBubblesApproval(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$BubbleWarningDialogFragment(Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/BubblePreferenceController;->revertBubblesApproval(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 47
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "p"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1203a0

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$SOMFEqqXI_4CCDbvcJugYVb9oWE;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$SOMFEqqXI_4CCDbvcJugYVb9oWE;-><init>(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;I)V

    const v2, 0x7f12039e

    .line 60
    invoke-virtual {v3, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$Z_nzEFn9OFBeG9cn_sIHv_0h-8Y;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$Z_nzEFn9OFBeG9cn_sIHv_0h-8Y;-><init>(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;I)V

    const p0, 0x7f12039f

    .line 64
    invoke-virtual {v3, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setPkgInfo(Ljava/lang/String;I)Lcom/android/settings/notification/BubbleWarningDialogFragment;
    .locals 2

    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "u"

    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
