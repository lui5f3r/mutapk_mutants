.class Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ReadingListItemView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;-><init>(Lorg/wikipedia/readinglist/ReadingListItemView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/readinglist/ReadingListItemView;


# direct methods
.method constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;Lorg/wikipedia/readinglist/ReadingListItemView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$2;->this$0:Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$2;->val$target:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListItemView_ViewBinding$2;->val$target:Lorg/wikipedia/readinglist/ReadingListItemView;

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/ReadingListItemView;->onClick(Landroid/view/View;)V

    return-void
.end method
