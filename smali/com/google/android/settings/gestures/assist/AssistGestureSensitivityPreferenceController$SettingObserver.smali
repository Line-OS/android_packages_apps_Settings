.class Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AssistGestureSensitivityPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final ASSIST_GESTURE_ENABLED_URI:Landroid/net/Uri;

.field private final ASSIST_GESTURE_SENSITIVITY_URI:Landroid/net/Uri;

.field private final ASSIST_GESTURE_SILENCE_PHONE_ENABLED_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;

    .line 270
    invoke-static {p1}, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;->access$100(Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "assist_gesture_enabled"

    .line 263
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_ENABLED_URI:Landroid/net/Uri;

    const-string p1, "assist_gesture_silence_alerts_enabled"

    .line 265
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_SILENCE_PHONE_ENABLED_URI:Landroid/net/Uri;

    const-string p1, "assist_gesture_sensitivity"

    .line 267
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_SENSITIVITY_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;

    invoke-static {p0}, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;->access$400(Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;)V

    return-void
.end method

.method public register()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;

    invoke-static {v0}, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;->access$200(Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_ENABLED_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    iget-object v1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_SILENCE_PHONE_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 277
    iget-object v1, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->ASSIST_GESTURE_SENSITIVITY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController$SettingObserver;->this$0:Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;

    invoke-static {v0}, Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;->access$300(Lcom/google/android/settings/gestures/assist/AssistGestureSensitivityPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
