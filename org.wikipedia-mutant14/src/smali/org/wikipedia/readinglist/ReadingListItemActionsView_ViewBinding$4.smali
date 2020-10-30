.class Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ReadingListItemActionsView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;-><init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/readinglist/ReadingListItemActionsView;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemActionsView;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$4;->this$0:Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$4;->val$target:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemActionsView_ViewBinding$4;->val$target:Lorg/wikipedia/readinglist/ReadingListItemActionsView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/ReadingListItemActionsView;->onShareClick(Landroid/view/View;)V

    return-void
.end method
