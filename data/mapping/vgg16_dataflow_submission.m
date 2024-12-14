Network vgg16 {
    Layer CONV1 { 
        Type: CONV
        Dimensions { K 64,C 3,R 3,S 3,Y 224,X 224 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            TemporalMap(32,32) K;
            TemporalMap(222,1) X';
            TemporalMap(222,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
            
        }
    }

    Layer CONV2 { 
        Type: CONV
        Dimensions { K 64,C 64,R 3,S 3,Y 224,X 224 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            TemporalMap(32,32) K;
            TemporalMap(222,1) X';
            TemporalMap(222,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV3 { 
        Type: CONV
        Dimensions { K 128,C 64,R 3,S 3,Y 112,X 112 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(110,1) X';
            TemporalMap(110,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV4 { 
        Type: CONV
        Dimensions { K 128,C 128,R 3,S 3,Y 112,X 112 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(110,1) X';
            TemporalMap(110,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV5 { 
        Type: CONV
        Dimensions { K 256,C 128,R 3,S 3,Y 56,X 56 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(54,1) X';
            TemporalMap(54,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV6 { 
        Type: CONV
        Dimensions { K 256,C 256,R 3,S 3,Y 56,X 56 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(54,1) X';
            TemporalMap(54,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV7 { 
        Type: CONV
        Dimensions { K 256,C 256,R 3,S 3,Y 56,X 56 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(54,1) X';
            TemporalMap(54,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV8 { 
        Type: CONV
        Dimensions { K 512,C 256,R 3,S 3,Y 28,X 28 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(26,1) X';
            TemporalMap(26,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV9 { 
        Type: CONV
        Dimensions { K 512,C 512,R 3,S 3,Y 28,X 28 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(26,1) X';
            TemporalMap(26,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV10 { 
        Type: CONV
        Dimensions { K 512,C 512,R 3,S 3,Y 28,X 28 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(26,1) X';
            TemporalMap(26,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV11 { 
        Type: CONV
        Dimensions { K 512,C 512,R 3,S 3,Y 14,X 14 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(12,1) X';
            TemporalMap(12,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV12 { 
        Type: CONV
        Dimensions { K 512,C 512,R 3,S 3,Y 14,X 14 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(12,1) X';
            TemporalMap(12,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer CONV13 { 
        Type: CONV
        Dimensions { K 512,C 512,R 3,S 3,Y 14,X 14 }
        Dataflow {
            // Fill your dataflow here
            SpatialMap(1,1) C;
            SpatialMap(32,32) K;
            TemporalMap(12,1) X';
            TemporalMap(12,1) Y';
            TemporalMap(Sz(R),Sz(R)) R;
            TemporalMap(Sz(S),Sz(S)) S;
            Cluster(32, P);
            SpatialMap(1,1) K;
        }
    }

    Layer FC1 { 
        Type: GEMM
        Dimensions { M 4096, N 1, K 25088 }
        Dataflow {
            TemporalMap(1,1) N;
            SpatialMap(25,25) K;
            TemporalMap(1024,1024) M;
            Cluster(1024, P);
            SpatialMap(1,1) M;
        }
    }

    Layer FC2 { 
        Type: GEMM
        Dimensions { M 4096, N 1, K 4096 }
        Dataflow {
            TemporalMap(1,1) N;
            SpatialMap(4,4) K;
            TemporalMap(1024,1024) M;
            Cluster(1024, P);
            SpatialMap(1,1) M;
        }
    }

    Layer FC3 { 
        Type: GEMM
        Dimensions { M 4096, N 1, K 4096 }
        Dataflow {
            TemporalMap(1,1) N;
            SpatialMap(32,32) K;
            TemporalMap(1024,1024) M;
            Cluster(1024, P);
            SpatialMap(1,1) M;
        }
    }
}

