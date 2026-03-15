.class Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

.field final synthetic val$hasAlternateButton:Z


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;Z)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    iput-boolean p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->val$hasAlternateButton:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 132
    iget-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->val$hasAlternateButton:Z

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
