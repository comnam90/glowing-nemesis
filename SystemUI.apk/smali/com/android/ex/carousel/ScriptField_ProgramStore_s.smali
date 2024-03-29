.class public Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_ProgramStore_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    }
.end annotation


# static fields
.field private static mElementCache:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/renderscript/Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElementCache:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .parameter "rs"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 35
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 36
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 1
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 41
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 42
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;II)V
    .locals 1
    .parameter "rs"
    .parameter "count"
    .parameter "usages"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 48
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 49
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->init(Landroid/renderscript/RenderScript;II)V

    .line 51
    return-void
.end method

.method private copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V
    .locals 2
    .parameter "i"
    .parameter "index"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 99
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 100
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;Landroid/renderscript/FieldPacker;)V
    .locals 1
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 93
    iget-object v0, p1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 94
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;I)Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    .locals 1
    .parameter "rs"
    .parameter "dimX"

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->create1D(Landroid/renderscript/RenderScript;II)Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    move-result-object v0

    return-object v0
.end method

.method public static create1D(Landroid/renderscript/RenderScript;II)Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    .locals 2
    .parameter "rs"
    .parameter "dimX"
    .parameter "usages"

    .prologue
    .line 54
    new-instance v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    invoke-direct {v0, p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 55
    .local v0, obj:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    iget-object v1, v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    invoke-static {p0, v1, p1, p2}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v1

    iput-object v1, v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    .line 56
    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;II)Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    .locals 1
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->create2D(Landroid/renderscript/RenderScript;III)Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    move-result-object v0

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;III)Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    .locals 4
    .parameter "rs"
    .parameter "dimX"
    .parameter "dimY"
    .parameter "usages"

    .prologue
    .line 68
    new-instance v1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    invoke-direct {v1, p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 69
    .local v1, obj:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v3, v1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    invoke-direct {v0, p0, v3}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 70
    .local v0, b:Landroid/renderscript/Type$Builder;
    invoke-virtual {v0, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 71
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 72
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v2

    .line 73
    .local v2, t:Landroid/renderscript/Type;
    invoke-static {p0, v2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, v1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    .line 74
    return-object v1
.end method

.method public static createCustom(Landroid/renderscript/RenderScript;Landroid/renderscript/Type$Builder;I)Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    .locals 4
    .parameter "rs"
    .parameter "tb"
    .parameter "usages"

    .prologue
    .line 83
    new-instance v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;

    invoke-direct {v0, p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;-><init>(Landroid/renderscript/RenderScript;)V

    .line 84
    .local v0, obj:Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
    invoke-virtual {p1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    .line 85
    .local v1, t:Landroid/renderscript/Type;
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    iget-object v3, v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    if-eq v2, v3, :cond_0

    .line 86
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string v3, "Type.Builder did not match expected element type."

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    invoke-static {p0, v1, p2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    iput-object v2, v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    .line 89
    return-object v0
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .locals 3
    .parameter "rs"

    .prologue
    .line 28
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 29
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "programStore"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 30
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method

.method public static createTypeBuilder(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "rs"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    .line 79
    .local v0, e:Landroid/renderscript/Element;
    new-instance v1, Landroid/renderscript/Type$Builder;

    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .locals 4

    .prologue
    .line 140
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    .locals 1
    .parameter "index"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get_programStore(I)Landroid/renderscript/ProgramStore;
    .locals 1
    .parameter "index"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 136
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 6
    .parameter "newSize"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-eqz v3, :cond_2

    .line 146
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    array-length v2, v3

    .line 147
    .local v2, oldSize:I
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 148
    .local v0, copySize:I
    if-ne p1, v2, :cond_1

    .line 156
    .end local v0           #copySize:I
    .end local v2           #oldSize:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    .restart local v0       #copySize:I
    .restart local v2       #oldSize:I
    :cond_1
    :try_start_1
    new-array v1, p1, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 150
    .local v1, ni:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 154
    .end local v0           #copySize:I
    .end local v1           #ni:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    .end local v2           #oldSize:I
    :cond_2
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v3, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 155
    iget-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v3, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized set(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;IZ)V
    .locals 2
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aput-object p1, v1, p2

    .line 105
    if-eqz p3, :cond_1

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V

    .line 107
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 108
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 109
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_1
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set_programStore(ILandroid/renderscript/ProgramStore;Z)V
    .locals 3
    .parameter "index"
    .parameter "v"
    .parameter "copyNow"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v1, :cond_0

    new-instance v1, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v1, v1, p1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    new-instance v2, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    invoke-direct {v2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;-><init>()V

    aput-object v2, v1, p1

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;

    .line 124
    if-eqz p3, :cond_3

    .line 125
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v2, p1, 0x4

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 126
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 127
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 128
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 129
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_3
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
