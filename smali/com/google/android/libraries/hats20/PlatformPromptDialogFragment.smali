.class public final Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;
.super Landroid/app/DialogFragment;
.source "PlatformPromptDialogFragment.java"

# interfaces
.implements Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;


# instance fields
.field private final delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;-><init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate$DialogFragmentInterface;)V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/google/android/libraries/hats20/model/SurveyController;Lcom/google/android/libraries/hats20/answer/AnswerBeacon;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;
    .locals 1

    .line 47
    new-instance v0, Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;-><init>()V

    .line 49
    invoke-static/range {p0 .. p5}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->createArgs(Ljava/lang/String;Lcom/google/android/libraries/hats20/model/SurveyController;Lcom/google/android/libraries/hats20/answer/AnswerBeacon;Ljava/lang/Integer;Ljava/lang/Integer;Z)Landroid/os/Bundle;

    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onDestroy()V

    .line 91
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 84
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 85
    iget-object p0, p0, Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 78
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 79
    iget-object p0, p0, Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 73
    iget-object p0, p0, Lcom/google/android/libraries/hats20/PlatformPromptDialogFragment;->delegate:Lcom/google/android/libraries/hats20/PromptDialogDelegate;

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onStart()V

    return-void
.end method
