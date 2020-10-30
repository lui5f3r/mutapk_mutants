.class Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SearchCardView_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;-><init>(Lorg/wikipedia/feed/searchbar/SearchCardView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;

.field final synthetic val$target:Lorg/wikipedia/feed/searchbar/SearchCardView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;Lorg/wikipedia/feed/searchbar/SearchCardView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding$2;->this$0:Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding;

    iput-object p2, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding$2;->val$target:Lorg/wikipedia/feed/searchbar/SearchCardView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lorg/wikipedia/feed/searchbar/SearchCardView_ViewBinding$2;->val$target:Lorg/wikipedia/feed/searchbar/SearchCardView;

    invoke-virtual {p1}, Lorg/wikipedia/feed/searchbar/SearchCardView;->onVoiceSearchClick()V

    return-void
.end method
