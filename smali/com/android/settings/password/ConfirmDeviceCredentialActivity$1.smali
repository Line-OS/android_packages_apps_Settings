.class Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 108
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$000(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$400(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$100(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 112
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$300(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    .line 113
    invoke-static {v0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$200(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p2, p1, v0}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialError(ILjava/lang/String;)V

    .line 115
    :cond_2
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$600(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/trust/TrustManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$500(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$700(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$800(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    .line 127
    invoke-static {v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$500(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result v1

    .line 126
    invoke-static {p1, v0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;I)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    .line 131
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$100(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$300(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 136
    iget-object p0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    return-void
.end method
