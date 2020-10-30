.class public Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;
.super Ljava/lang/Object;
.source "DescriptionEditView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/descriptions/DescriptionEditView;

.field private view7f09045a:Landroid/view/View;

.field private view7f09045d:Landroid/view/View;

.field private view7f09045f:Landroid/view/View;

.field private view7f090465:Landroid/view/View;

.field private view7f090469:Landroid/view/View;

.field private view7f090469TextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditView;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/descriptions/DescriptionEditView;Landroid/view/View;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 51
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f09046b

    const-string v2, "field \'toolbarContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->toolbarContainer:Landroid/widget/FrameLayout;

    .line 52
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045c

    const-string v2, "field \'headerText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->headerText:Landroid/widget/TextView;

    const v0, 0x7f090465

    const-string v1, "field \'saveButton\' and method \'onSaveClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 54
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'saveButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    .line 55
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090465:Landroid/view/View;

    .line 56
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;Lorg/wikipedia/descriptions/DescriptionEditView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045a

    const-string v1, "field \'cancelButton\' and method \'onCancelClick\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 63
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'cancelButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->cancelButton:Landroid/widget/ImageView;

    .line 64
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f09045a:Landroid/view/View;

    .line 65
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$2;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;Lorg/wikipedia/descriptions/DescriptionEditView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09045d

    const-string v1, "field \'helpButton\' and method \'onHelpClick\'"

    .line 71
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 72
    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->helpButton:Landroid/view/View;

    .line 73
    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f09045d:Landroid/view/View;

    .line 74
    new-instance v1, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$3;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;Lorg/wikipedia/descriptions/DescriptionEditView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090469

    const-string v1, "field \'pageDescriptionText\', method \'descriptionTextEditorAction\', and method \'pageDescriptionTextChanged\'"

    .line 80
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 81
    const-class v2, Lorg/wikipedia/views/PlainPasteEditText;

    const-string v3, "field \'pageDescriptionText\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/PlainPasteEditText;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;

    .line 82
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090469:Landroid/view/View;

    .line 83
    check-cast v1, Landroid/widget/TextView;

    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$4;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;Lorg/wikipedia/descriptions/DescriptionEditView;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 89
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$5;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;Lorg/wikipedia/descriptions/DescriptionEditView;)V

    iput-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090469TextWatcher:Landroid/text/TextWatcher;

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    const-class v0, Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f09046a

    const-string v2, "field \'pageDescriptionLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 105
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090461

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->progressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f09045f

    const-string v1, "field \'pageSummaryContainer\' and method \'onReadArticleClick\'"

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 107
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'pageSummaryContainer\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryContainer:Landroid/view/ViewGroup;

    .line 108
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f09045f:Landroid/view/View;

    .line 109
    new-instance v0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding$6;-><init>(Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;Lorg/wikipedia/descriptions/DescriptionEditView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09045e

    const-string v2, "field \'pageSummaryText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryText:Landroid/widget/TextView;

    .line 116
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f09045b

    const-string v2, "field \'descriptionEditContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->descriptionEditContainer:Landroid/view/ViewGroup;

    .line 117
    const-class v0, Lorg/wikipedia/descriptions/DescriptionEditReviewView;

    const v1, 0x7f090464

    const-string v2, "field \'pageReviewContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditReviewView;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->pageReviewContainer:Lorg/wikipedia/descriptions/DescriptionEditReviewView;

    .line 118
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090460

    const-string v2, "field \'pageSummaryLabel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryLabel:Landroid/widget/TextView;

    .line 119
    const-class v0, Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;

    const v1, 0x7f090462

    const-string v2, "field \'bottomBarContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;

    iput-object v0, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->bottomBarContainer:Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;

    .line 120
    const-class v0, Landroid/widget/ScrollView;

    const v1, 0x7f090466

    const-string v2, "field \'scrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p1, Lorg/wikipedia/descriptions/DescriptionEditView;->scrollView:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .line 126
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->target:Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 130
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->toolbarContainer:Landroid/widget/FrameLayout;

    .line 131
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->headerText:Landroid/widget/TextView;

    .line 132
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->saveButton:Landroid/widget/ImageView;

    .line 133
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->cancelButton:Landroid/widget/ImageView;

    .line 134
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->helpButton:Landroid/view/View;

    .line 135
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionText:Lorg/wikipedia/views/PlainPasteEditText;

    .line 136
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageDescriptionLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 137
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->progressBar:Landroid/widget/ProgressBar;

    .line 138
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryContainer:Landroid/view/ViewGroup;

    .line 139
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryText:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->descriptionEditContainer:Landroid/view/ViewGroup;

    .line 141
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageReviewContainer:Lorg/wikipedia/descriptions/DescriptionEditReviewView;

    .line 142
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->pageSummaryLabel:Landroid/widget/TextView;

    .line 143
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->bottomBarContainer:Lorg/wikipedia/descriptions/DescriptionEditBottomBarView;

    .line 144
    iput-object v1, v0, Lorg/wikipedia/descriptions/DescriptionEditView;->scrollView:Landroid/widget/ScrollView;

    .line 146
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090465:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090465:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f09045a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f09045a:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f09045d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f09045d:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090469:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 153
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090469:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090469TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090469TextWatcher:Landroid/text/TextWatcher;

    .line 155
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f090469:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f09045f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditView_ViewBinding;->view7f09045f:Landroid/view/View;

    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
