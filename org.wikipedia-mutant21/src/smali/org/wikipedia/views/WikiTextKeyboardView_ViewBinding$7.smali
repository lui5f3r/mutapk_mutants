.class Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$7;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WikiTextKeyboardView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;-><init>(Lorg/wikipedia/views/WikiTextKeyboardView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/views/WikiTextKeyboardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;Lorg/wikipedia/views/WikiTextKeyboardView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$7;->this$0:Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$7;->val$target:Lorg/wikipedia/views/WikiTextKeyboardView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/wikipedia/views/WikiTextKeyboardView_ViewBinding$7;->val$target:Lorg/wikipedia/views/WikiTextKeyboardView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/WikiTextKeyboardView;->onClickButtonRef(Landroid/view/View;)V

    return-void
.end method
