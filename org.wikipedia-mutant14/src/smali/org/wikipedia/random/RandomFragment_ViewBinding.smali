.class public Lorg/wikipedia/random/RandomFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RandomFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/random/RandomFragment;

.field private view7f090306:Landroid/view/View;

.field private view7f09030c:Landroid/view/View;

.field private view7f09030d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/random/RandomFragment;Landroid/view/View;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->target:Lorg/wikipedia/random/RandomFragment;

    .line 31
    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x7f09030a

    const-string v2, "field \'randomPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p1, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    const v0, 0x7f09030c

    const-string v1, "field \'nextButton\' and method \'onNextClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v3, "field \'nextButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p1, Lorg/wikipedia/random/RandomFragment;->nextButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 34
    iput-object v1, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->view7f09030c:Landroid/view/View;

    .line 35
    new-instance v0, Lorg/wikipedia/random/RandomFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/random/RandomFragment_ViewBinding$1;-><init>(Lorg/wikipedia/random/RandomFragment_ViewBinding;Lorg/wikipedia/random/RandomFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09030d

    const-string v1, "field \'saveButton\' and method \'onSaveShareClick\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'saveButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lorg/wikipedia/random/RandomFragment;->saveButton:Landroid/widget/ImageView;

    .line 43
    iput-object v1, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->view7f09030d:Landroid/view/View;

    .line 44
    new-instance v0, Lorg/wikipedia/random/RandomFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/random/RandomFragment_ViewBinding$2;-><init>(Lorg/wikipedia/random/RandomFragment_ViewBinding;Lorg/wikipedia/random/RandomFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090306

    const-string v1, "field \'backButton\' and method \'onBackClick\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 51
    iput-object p2, p1, Lorg/wikipedia/random/RandomFragment;->backButton:Landroid/view/View;

    .line 52
    iput-object p2, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->view7f090306:Landroid/view/View;

    .line 53
    new-instance v0, Lorg/wikipedia/random/RandomFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/random/RandomFragment_ViewBinding$3;-><init>(Lorg/wikipedia/random/RandomFragment_ViewBinding;Lorg/wikipedia/random/RandomFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->target:Lorg/wikipedia/random/RandomFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->target:Lorg/wikipedia/random/RandomFragment;

    .line 68
    iput-object v1, v0, Lorg/wikipedia/random/RandomFragment;->randomPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 69
    iput-object v1, v0, Lorg/wikipedia/random/RandomFragment;->nextButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 70
    iput-object v1, v0, Lorg/wikipedia/random/RandomFragment;->saveButton:Landroid/widget/ImageView;

    .line 71
    iput-object v1, v0, Lorg/wikipedia/random/RandomFragment;->backButton:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->view7f09030c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->view7f09030c:Landroid/view/View;

    .line 75
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->view7f09030d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->view7f09030d:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->view7f090306:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lorg/wikipedia/random/RandomFragment_ViewBinding;->view7f090306:Landroid/view/View;

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
