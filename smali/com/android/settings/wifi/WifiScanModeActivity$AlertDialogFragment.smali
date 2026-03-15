.class public Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiScanModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# instance fields
.field private final mApp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    .locals 1

    .line 113
    new-instance v0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x21f

    return p0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WifiScanModeActivity;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->access$000(Lcom/android/settings/wifi/WifiScanModeActivity;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 135
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1211d4

    .line 137
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f1211d6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 138
    iget-object v3, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1211d2

    new-instance v1, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$2;-><init>(Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    .line 139
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1211d3

    new-instance v1, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;-><init>(Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    .line 146
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
