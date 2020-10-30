.class public Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding;
.super Ljava/lang/Object;
.source "AccessibilityCardView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/feed/accessibility/AccessibilityCardView;

.field private view7f09044b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/accessibility/AccessibilityCardView;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/accessibility/AccessibilityCardView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/accessibility/AccessibilityCardView;Landroid/view/View;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding;->target:Lorg/wikipedia/feed/accessibility/AccessibilityCardView;

    const v0, 0x7f09044b

    const-string v1, "method \'onLoadMoreClick\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding;->view7f09044b:Landroid/view/View;

    .line 31
    new-instance v0, Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding$1;-><init>(Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding;Lorg/wikipedia/feed/accessibility/AccessibilityCardView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding;->target:Lorg/wikipedia/feed/accessibility/AccessibilityCardView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding;->target:Lorg/wikipedia/feed/accessibility/AccessibilityCardView;

    .line 46
    iget-object v1, p0, Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding;->view7f09044b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iput-object v0, p0, Lorg/wikipedia/feed/accessibility/AccessibilityCardView_ViewBinding;->view7f09044b:Landroid/view/View;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
