.class Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ReadingListsOverflowView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;-><init>(Lorg/wikipedia/views/ReadingListsOverflowView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/views/ReadingListsOverflowView;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;Lorg/wikipedia/views/ReadingListsOverflowView;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$2;->this$0:Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$2;->val$target:Lorg/wikipedia/views/ReadingListsOverflowView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/wikipedia/views/ReadingListsOverflowView_ViewBinding$2;->val$target:Lorg/wikipedia/views/ReadingListsOverflowView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/ReadingListsOverflowView;->onItemClick(Landroid/view/View;)V

    return-void
.end method
