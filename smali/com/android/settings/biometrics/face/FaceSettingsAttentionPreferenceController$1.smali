.class Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;
.super Landroid/hardware/face/FaceManager$SetFeatureCallback;
.source "FaceSettingsAttentionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$SetFeatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(ZI)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 47
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-nez p0, :cond_0

    move p2, v0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$100(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->access$000(Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move p2, v0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController$1;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->getUserId()I

    move-result p0

    const-string v0, "face_unlock_attention_required"

    .line 51
    invoke-static {p1, v0, p2, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    :goto_0
    return-void
.end method
