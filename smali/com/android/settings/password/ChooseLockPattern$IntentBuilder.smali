.class public Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockPattern;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    .line 103
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "extra_require_password"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "confirm_credentials"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string p1, "has_challenge"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public setChallenge(J)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFace(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_face"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setPattern([B)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method
