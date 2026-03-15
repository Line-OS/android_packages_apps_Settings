.class public Lcom/google/android/libraries/hats20/view/OpenTextFragment;
.super Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;
.source "OpenTextFragment.java"


# instance fields
.field private editTextField:Landroid/widget/EditText;

.field private fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

.field private isSingleLine:Z

.field private questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

.field private questionText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    return-void
.end method

.method public static newInstance(Lcom/google/android/libraries/hats20/model/Question;)Lcom/google/android/libraries/hats20/view/OpenTextFragment;
    .locals 4

    .line 54
    new-instance v0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/hats20/view/OpenTextFragment;-><init>()V

    .line 55
    check-cast p0, Lcom/google/android/libraries/hats20/model/QuestionOpenText;

    .line 57
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/Question;->getQuestionText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuestionText"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/model/QuestionOpenText;->isSingleLine()Z

    move-result p0

    const-string v2, "IsSingleLine"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public closeKeyboard()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->editTextField:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public computeQuestionResponse()Lcom/google/android/libraries/hats20/answer/QuestionResponse;
    .locals 3

    .line 154
    invoke-static {}, Lcom/google/android/libraries/hats20/answer/QuestionResponse;->builder()Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsAnswered()V

    .line 158
    iget-object v1, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->getDelayMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->setDelayMs(J)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    .line 159
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->editTextField:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "skipped"

    .line 162
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->addResponse(Ljava/lang/String;)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->addResponse(Ljava/lang/String;)Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;

    .line 168
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/answer/QuestionResponse$Builder;->build()Lcom/google/android/libraries/hats20/answer/QuestionResponse;

    move-result-object p0

    return-object p0
.end method

.method createScrollViewContents()Landroid/view/View;
    .locals 4

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 129
    sget v1, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_scrollable_answer_content_container:I

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_open_text_question_min_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 133
    sget v2, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_answers_container:I

    .line 134
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 136
    sget v2, Lcom/google/android/libraries/hats20/R$layout;->hats_survey_question_open_text_item:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 137
    sget v0, Lcom/google/android/libraries/hats20/R$id;->hats_lib_survey_open_text:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->editTextField:Landroid/widget/EditText;

    .line 138
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->editTextField:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->isSingleLine:Z

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 139
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->editTextField:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/google/android/libraries/hats20/R$string;->hats_lib_open_text_hint:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method getQuestionText()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionText:Ljava/lang/String;

    return-object p0
.end method

.method public isResponseSatisfactory()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;

    .line 149
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->isResponseSatisfactory()Z

    move-result v0

    invoke-interface {p1, v0, p0}, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;->onQuestionProgressableChanged(ZLandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "QuestionText"

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionText:Ljava/lang/String;

    const-string v1, "IsSingleLine"

    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->isSingleLine:Z

    if-nez p1, :cond_0

    .line 83
    new-instance p1, Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-direct {p1}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    goto :goto_0

    :cond_0
    const-string v0, "QuestionMetrics"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    iput-object p1, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->watch(Lcom/google/android/libraries/hats20/view/FragmentViewDelegate$MeasurementSurrogate;Landroid/view/View;)V

    :cond_0
    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->fragmentViewDelegate:Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/FragmentViewDelegate;->cleanUp()V

    .line 104
    invoke-super {p0}, Lcom/google/android/libraries/hats20/view/ScrollableAnswerFragment;->onDetach()V

    return-void
.end method

.method public onPageScrolledIntoView()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    invoke-virtual {v0}, Lcom/google/android/libraries/hats20/view/QuestionMetrics;->markAsShown()V

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->isResponseSatisfactory()Z

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/libraries/hats20/view/OnQuestionProgressableChangeListener;->onQuestionProgressableChanged(ZLandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    iget-object p0, p0, Lcom/google/android/libraries/hats20/view/OpenTextFragment;->questionMetrics:Lcom/google/android/libraries/hats20/view/QuestionMetrics;

    const-string v0, "QuestionMetrics"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
